package g;

import android.app.Application;
import android.app.Notification;
import android.app.job.JobParameters;
import android.graphics.drawable.Icon;
import android.icu.text.DecimalFormatSymbols;
import android.net.Network;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.PrecomputedText;
import android.view.DisplayCutout;
import android.view.Menu;
import android.view.ViewConfiguration;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;

/* loaded from: classes.dex */
public abstract class eyo {
    public static int a(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetBottom();
    }

    public static int b(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetTop();
    }

    public static Uri c(Object obj) {
        return ((Icon) obj).getUri();
    }

    public static int d(Object obj) {
        return ((Icon) obj).getType();
    }

    public static Network e(JobParameters jobParameters) {
        return jobParameters.getNetwork();
    }

    public static int f(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledHoverSlop();
    }

    public static String g() {
        String processName = Application.getProcessName();
        bff.e(processName, "getProcessName()");
        return processName;
    }

    public static Handler h(Looper looper) {
        return Handler.createAsync(looper);
    }

    public static int i(Object obj) {
        return ((Icon) obj).getResId();
    }

    public static boolean j(ViewConfiguration viewConfiguration) {
        return viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
    }

    public static void k(TextView textView, int i) {
        textView.setFirstBaselineToTopHeight(i);
    }

    public static PrecomputedText.Params l(AppCompatTextView appCompatTextView) {
        return appCompatTextView.getTextMetricsParams();
    }

    public static int m(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetLeft();
    }

    public static Handler n(Looper looper) {
        return Handler.createAsync(looper);
    }

    public static int o(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetRight();
    }

    public static void p(Menu menu, boolean z) {
        menu.setGroupDividerEnabled(z);
    }

    public static String[] q(DecimalFormatSymbols decimalFormatSymbols) {
        return decimalFormatSymbols.getDigitStrings();
    }

    public static String r(Object obj) {
        return ((Icon) obj).getResPackage();
    }

    public static void s(Notification.Action.Builder builder) {
        builder.setSemanticAction(0);
    }
}
