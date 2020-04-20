package utils

import android.app.Activity
import android.os.Build
import android.view.Window
import android.view.WindowManager
import androidx.annotation.ColorRes
import java.text.SimpleDateFormat
import java.util.*

private const val DEFAULT_NO_DATE = "-"

object Utils {

    private val formatter = SimpleDateFormat("HH:mm", Locale.getDefault())
    private val parser = SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.getDefault())

    fun getFormattedDate(date: String?): String {
        if (date == null) {
            return DEFAULT_NO_DATE
        }
        return formatter.format(parser.parse(date)!!)
    }

    //Making things pretty.
    fun setupStatusBar(activity: Activity, @ColorRes color: Int) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            val window: Window = activity.window
            window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS)
            window.statusBarColor = activity.getColor(color)
        }
    }
}