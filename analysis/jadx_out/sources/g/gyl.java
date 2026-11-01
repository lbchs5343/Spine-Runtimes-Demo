package g;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import java.lang.reflect.Constructor;

/* loaded from: classes.dex */
public class gyl {
    public final Object[] m = new Object[2];
    public static final Class[] j = {Context.class, AttributeSet.class};
    public static final int[] k = {R.attr.onClick};

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f19003g = {R.attr.accessibilityHeading};
    public static final int[] h = {R.attr.accessibilityPaneTitle};
    public static final int[] i = {R.attr.screenReaderFocusable};
    public static final String[] l = {"android.widget.", "android.view.", "android.webkit."};

    /* renamed from: f, reason: collision with root package name */
    public static final bcp f19002f = new bcp(0);

    public ajz a(Context context, AttributeSet attributeSet) {
        return new ajz(context, attributeSet);
    }

    public AppCompatTextView b(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    public dzp c(Context context, AttributeSet attributeSet) {
        return new dzp(context, attributeSet);
    }

    public bbj d(Context context, AttributeSet attributeSet) {
        return new bbj(context, attributeSet, cn.trinea.android.developertools.R.attr.buttonStyle);
    }

    public fqn e(Context context, AttributeSet attributeSet) {
        return new fqn(context, attributeSet, cn.trinea.android.developertools.R.attr.checkboxStyle);
    }

    public final View n(Context context, String str, String str2) {
        String concat;
        bcp bcpVar = f19002f;
        Constructor constructor = (Constructor) bcpVar.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    concat = str2.concat(str);
                } catch (Exception unused) {
                    return null;
                }
            } else {
                concat = str;
            }
            constructor = Class.forName(concat, false, context.getClassLoader()).asSubclass(View.class).getConstructor(j);
            bcpVar.put(str, constructor);
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.m);
    }
}
