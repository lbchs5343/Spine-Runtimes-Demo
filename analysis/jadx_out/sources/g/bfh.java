package g;

import android.os.Build;

/* loaded from: classes3.dex */
public abstract class bfh {

    /* renamed from: a, reason: collision with root package name */
    public static final dbi f11444a;

    /* renamed from: b, reason: collision with root package name */
    public static final fbc f11445b;

    /* renamed from: c, reason: collision with root package name */
    public static final ao f11446c;

    static {
        String property = System.getProperty("java.vm.name");
        property.getClass();
        if (property.equals("RoboVM")) {
            f11444a = null;
            f11445b = new fbc(10);
            f11446c = new ao(25);
        } else {
            if (!property.equals("Dalvik")) {
                f11444a = null;
                f11445b = new bkc(1);
                f11446c = new dde(25);
                return;
            }
            f11444a = new dbi();
            if (Build.VERSION.SDK_INT >= 24) {
                f11445b = new bkc(0);
                f11446c = new dde(25);
            } else {
                f11445b = new fbc(10);
                f11446c = new ao(25);
            }
        }
    }
}
