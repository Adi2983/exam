package adi.V7EXAM_MTsN_2_Kotawaringin_Timur.auth

import android.app.Activity
import com.google.firebase.auth.FirebaseAuth
import com.google.firebase.auth.FirebaseAuthInvalidCredentialsException
import com.google.firebase.auth.FirebaseAuthUserCollisionException
import com.google.firebase.auth.FirebaseAuthWeakPasswordException
import com.google.firebase.auth.ktx.auth
import com.google.firebase.ktx.Firebase

class AuthManager private constructor() {
    private val auth: FirebaseAuth = Firebase.auth

    companion object {
        @Volatile
        private var INSTANCE: AuthManager? = null

        fun getInstance(): AuthManager {
            return INSTANCE ?: synchronized(this) {
                INSTANCE ?: AuthManager().also { INSTANCE = it }
            }
        }
    }

    fun getCurrentUser() = auth.currentUser
    
    fun isUserLoggedIn() = auth.currentUser != null

    suspend fun loginWithEmail(
        email: String,
        password: String,
        onSuccess: () -> Unit,
        onError: (String) -> Unit
    ) {
        try {
            auth.signInWithEmailAndPassword(email, password)
                .addOnCompleteListener { task ->
                    if (task.isSuccessful) {
                        onSuccess()
                    } else {
                        onError(task.exception?.message ?: "Authentication failed")
                    }
                }
        } catch (e: Exception) {
            onError(e.message ?: "An unexpected error occurred")
        }
    }

    suspend fun registerWithEmail(
        email: String,
        password: String,
        onSuccess: () -> Unit,
        onError: (String) -> Unit
    ) {
        try {
            auth.createUserWithEmailAndPassword(email, password)
                .addOnCompleteListener { task ->
                    if (task.isSuccessful) {
                        onSuccess()
                    } else {
                        val errorMessage = when (task.exception) {
                            is FirebaseAuthWeakPasswordException -> "Password is too weak"
                            is FirebaseAuthInvalidCredentialsException -> "Invalid email format"
                            is FirebaseAuthUserCollisionException -> "Email is already registered"
                            else -> "Registration failed: ${task.exception?.message}"
                        }
                        onError(errorMessage)
                    }
                }
        } catch (e: Exception) {
            onError(e.message ?: "An unexpected error occurred")
        }
    }

    fun sendPasswordResetEmail(
        email: String,
        onSuccess: () -> Unit,
        onError: (String) -> Unit
    ) {
        auth.sendPasswordResetEmail(email)
            .addOnCompleteListener { task ->
                if (task.isSuccessful) {
                    onSuccess()
                } else {
                    onError(task.exception?.message ?: "Failed to send reset email")
                }
            }
    }

    fun logout() {
        auth.signOut()
    }
}
