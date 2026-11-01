package g;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;
import cn.trinea.android.developertools.R;
import com.bytedance.pangle.ZeusPluginEventCallback;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public abstract class gm {

    /* renamed from: a, reason: collision with root package name */
    public static final Field f18385a;

    /* renamed from: b, reason: collision with root package name */
    public static final Field f18386b;

    static {
        if (dyd.bq(25)) {
            try {
                Field declaredField = Toast.class.getDeclaredField("mTN");
                f18385a = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = declaredField.getType().getDeclaredField("mHandler");
                f18386b = declaredField2;
                declaredField2.setAccessible(true);
            } catch (Exception e2) {
                erl.ac(e2);
            }
        }
    }

    public static void c(Context context, int i) {
        d(context, context.getResources().getText(i), 1);
    }

    public static void d(Context context, CharSequence charSequence, int i) {
        Boolean aw;
        Toast makeText = Toast.makeText(context, charSequence, i);
        if (dyd.bq(25)) {
            try {
                Object obj = f18385a.get(makeText);
                Field field = f18386b;
                Handler handler = (Handler) field.get(obj);
                eqi eqiVar = new eqi();
                eqiVar.f15995b = handler;
                field.set(obj, eqiVar);
            } catch (Exception e2) {
                erl.ac(e2);
            }
        }
        makeText.show();
        if (!fnp.m() || (aw = eyt.aw(context)) == null || aw.booleanValue()) {
            return;
        }
        int i2 = i == 0 ? ZeusPluginEventCallback.EVENT_START_LOAD : 3500;
        try {
            View inflate = LayoutInflater.from(context).inflate(R.layout.view_toast_window, (ViewGroup) null);
            fkn fknVar = new fkn();
            fknVar.f16939c = context;
            fknVar.f16940d = (WindowManager) context.getSystemService("window");
            fknVar.f16937a = inflate;
            fknVar.f16938b = ZeusPluginEventCallback.EVENT_START_LOAD;
            ((TextView) inflate.findViewById(R.id.tv)).setText(charSequence);
            fknVar.f16938b = i2;
            fknVar.i();
        } catch (Exception e3) {
            erl.ai("toast by windowManager", e3);
        }
    }

    public static void e(Context context, int i) {
        k(context, context.getResources().getText(i));
    }

    public static void f(Context context, int i) {
        d(context, context.getResources().getText(i), 0);
    }

    public static void g(Context context, int i, Object... objArr) {
        k(context, String.format(context.getResources().getString(i), objArr));
    }

    public static void h(Context context, int i, Object... objArr) {
        d(context, String.format(context.getResources().getString(i), objArr), 1);
    }

    public static void i(Context context, int i, int i2) {
        d(context, context.getResources().getText(i), i2);
    }

    public static void j(Context context, int i, Object... objArr) {
        d(context, String.format(context.getResources().getString(i), objArr), 0);
    }

    public static void k(Context context, CharSequence charSequence) {
        d(context, charSequence, (charSequence == null ? 0 : charSequence.length()) > 30 ? 1 : 0);
    }
}
