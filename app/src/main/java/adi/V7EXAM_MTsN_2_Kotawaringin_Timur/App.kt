package adi.V7EXAM_MTsN_2_Kotawaringin_Timur

import android.app.Application
import androidx.appcompat.app.AppCompatDelegate
import com.google.firebase.FirebaseApp
import com.google.firebase.auth.FirebaseAuth
import com.google.firebase.auth.ktx.auth
import com.google.firebase.ktx.Firebase

class App : Application() {
    companion object {
        lateinit var auth: FirebaseAuth
            private set
    }

    override fun onCreate() {
        super.onCreate()
        AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_NO)
        
        // Initialize Firebase
        FirebaseApp.initializeApp(this)
        auth = Firebase.auth
    }
}
