package g;

import android.app.Activity;
import android.content.DialogInterface;
import android.view.accessibility.AccessibilityManager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class xg implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f20279a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f20280b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f20281c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f20282d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f20283e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Activity f20284f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ String f20285g;

    public /* synthetic */ xg(Activity activity, String str, String str2, String str3, String str4, String str5, int i) {
        this.f20283e = i;
        this.f20284f = activity;
        this.f20280b = str;
        this.f20281c = str2;
        this.f20282d = str3;
        this.f20285g = str4;
        this.f20279a = str5;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.f20283e;
        String str = this.f20279a;
        String str2 = this.f20285g;
        String str3 = this.f20282d;
        String str4 = this.f20281c;
        String str5 = this.f20280b;
        Activity activity = this.f20284f;
        switch (i2) {
            case 0:
                dov.a(activity, null, dov.c(str5, str4, str3, str2, str), false);
                break;
            default:
                AccessibilityManager accessibilityManager = (AccessibilityManager) activity.getSystemService("accessibility");
                if (accessibilityManager != null && accessibilityManager.isEnabled()) {
                    try {
                        Method declaredMethod = accessibilityManager.getClass().getDeclaredMethod("setState", Integer.TYPE);
                        if (declaredMethod != null) {
                            declaredMethod.setAccessible(true);
                            declaredMethod.invoke(accessibilityManager, 0);
                        }
                        dov.a(activity, null, dov.c(str5, str4, str3, str2, str), true);
                        break;
                    } catch (IllegalAccessException e2) {
                        erl.ai("Disable accessibility fail.", e2);
                        return;
                    } catch (NoSuchMethodException e3) {
                        erl.ai("Disable accessibility fail.", e3);
                    } catch (InvocationTargetException e4) {
                        erl.ai("Disable accessibility fail.", e4);
                        return;
                    }
                }
                break;
        }
    }
}
