package g;

import android.content.ComponentName;
import android.os.Bundle;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class ajy {

    /* renamed from: a, reason: collision with root package name */
    public String f10354a;

    /* renamed from: c, reason: collision with root package name */
    public final ComponentName f10356c;

    /* renamed from: e, reason: collision with root package name */
    public String f10358e;

    /* renamed from: d, reason: collision with root package name */
    public int f10357d = 1;

    /* renamed from: b, reason: collision with root package name */
    public boolean f10355b = true;

    public ajy(ComponentName componentName) {
        this.f10356c = componentName;
    }

    public static Bundle f(ajy ajyVar) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("shizuku:user-service-arg-component", ajyVar.f10356c);
        bundle.putBoolean("shizuku:user-service-arg-debuggable", false);
        bundle.putInt("shizuku:user-service-arg-version-code", ajyVar.f10357d);
        bundle.putBoolean("shizuku:user-service-arg-daemon", ajyVar.f10355b);
        bundle.putBoolean("shizuku:user-service-arg-use-32-bit-app-process", false);
        String str = ajyVar.f10358e;
        Objects.requireNonNull(str, "process name suffix must not be null");
        bundle.putString("shizuku:user-service-arg-process-name", str);
        String str2 = ajyVar.f10354a;
        if (str2 != null) {
            bundle.putString("shizuku:user-service-arg-tag", str2);
        }
        return bundle;
    }
}
