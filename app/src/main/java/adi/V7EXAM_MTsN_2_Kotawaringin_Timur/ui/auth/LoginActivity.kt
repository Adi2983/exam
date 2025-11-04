package adi.V7EXAM_MTsN_2_Kotawaringin_Timur.ui.auth

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import adi.V7EXAM_MTsN_2_Kotawaringin_Timur.R
import adi.V7EXAM_MTsN_2_Kotawaringin_Timur.auth.AuthManager
import adi.V7EXAM_MTsN_2_Kotawaringin_Timur.databinding.ActivityLoginBinding
import adi.V7EXAM_MTsN_2_Kotawaringin_Timur.ui.MainActivity
import com.google.firebase.auth.FirebaseAuth
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.tasks.await
import kotlinx.coroutines.withContext

class LoginActivity : AppCompatActivity() {
    private lateinit var binding: ActivityLoginBinding
    private val authManager = AuthManager.getInstance()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityLoginBinding.inflate(layoutInflater)
        setContentView(binding.root)

        setupClickListeners()
    }

    private fun setupClickListeners() {
        binding.apply {
            btnLogin.setOnClickListener { attemptLogin() }
            tvForgotPassword.setOnClickListener { showForgotPasswordDialog() }
            tvSignUp.setOnClickListener { navigateToSignUp() }
        }
    }

    private fun attemptLogin() {
        val email = binding.etEmail.text.toString().trim()
        val password = binding.etPassword.text.toString()

        if (validateInputs(email, password)) {
            showLoading(true)
            CoroutineScope(Dispatchers.IO).launch {
                try {
                    authManager.loginWithEmail(
                        email = email,
                        password = password,
                        onSuccess = {
                            withContext(Dispatchers.Main) {
                                showLoading(false)
                                navigateToMain()
                            }
                        },
                        onError = { error ->
                            withContext(Dispatchers.Main) {
                                showLoading(false)
                                showError(error)
                            }
                        }
                    )
                } catch (e: Exception) {
                    withContext(Dispatchers.Main) {
                        showLoading(false)
                        showError(e.message ?: "Login failed")
                    }
                }
            }
        }
    }

    private fun validateInputs(email: String, password: String): Boolean {
        if (email.isEmpty()) {
            binding.etEmail.error = "Email is required"
            return false
        }
        if (password.isEmpty()) {
            binding.etPassword.error = "Password is required"
            return false
        }
        if (password.length < 6) {
            binding.etPassword.error = "Password must be at least 6 characters"
            return false
        }
        return true
    }

    private fun showForgotPasswordDialog() {
        val email = binding.etEmail.text.toString().trim()
        if (email.isEmpty()) {
            binding.etEmail.error = "Enter your email first"
            return
        }

        showLoading(true)
        authManager.sendPasswordResetEmail(
            email = email,
            onSuccess = {
                showLoading(false)
                Toast.makeText(
                    this,
                    "Password reset email sent. Check your inbox.",
                    Toast.LENGTH_LONG
                ).show()
            },
            onError = { error ->
                showLoading(false)
                showError(error)
            }
        )
    }

    private fun navigateToSignUp() {
        // TODO: Implement navigation to sign up screen
        Toast.makeText(this, "Navigate to Sign Up", Toast.LENGTH_SHORT).show()
    }

    private fun navigateToMain() {
        startActivity(Intent(this, MainActivity::class.java))
        finish()
    }

    private fun showLoading(show: Boolean) {
        binding.progressBar.visibility = if (show) View.VISIBLE else View.GONE
        binding.btnLogin.isEnabled = !show
    }

    private fun showError(message: String) {
        Toast.makeText(this, message, Toast.LENGTH_LONG).show()
    }

    override fun onStart() {
        super.onStart()
        // Check if user is already logged in
        if (authManager.isUserLoggedIn()) {
            navigateToMain()
        }
    }
}
