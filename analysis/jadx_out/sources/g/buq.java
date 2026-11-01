package g;

import android.text.StaticLayout;
import android.widget.TextView;

/* loaded from: classes.dex */
public class buq {
    public void a(StaticLayout.Builder builder, TextView textView) {
    }

    public boolean b(TextView textView) {
        Object obj = Boolean.FALSE;
        try {
            obj = bnw.n("getHorizontallyScrolling").invoke(textView, null);
        } catch (Exception unused) {
        }
        return ((Boolean) obj).booleanValue();
    }
}
