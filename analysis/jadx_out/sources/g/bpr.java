package g;

import android.content.ComponentName;
import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class bpr {

    /* renamed from: a, reason: collision with root package name */
    public final ComponentName f11970a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f11971b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final byi f11972c;

    /* renamed from: d, reason: collision with root package name */
    public final cfo f11973d;

    public bpr(byi byiVar, cfo cfoVar, ComponentName componentName) {
        this.f11972c = byiVar;
        this.f11973d = cfoVar;
        this.f11970a = componentName;
    }

    public final void e(String str) {
        Bundle bundle = new Bundle();
        synchronized (this.f11971b) {
            try {
                try {
                    ((hds) this.f11972c).d(this.f11973d, str, bundle);
                } catch (RemoteException unused) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
