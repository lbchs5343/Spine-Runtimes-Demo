package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzaxg extends zzaxt {

    /* renamed from: a, reason: collision with root package name */
    public static volatile String f4583a;

    /* renamed from: b, reason: collision with root package name */
    public static final Object f4584b = new Object();

    public zzaxg(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2) {
        super(zzawfVar, "PDdqBkuC/wlZj3D1GonYQW5lEcio5HWZDbvjL/QlEgG/4K0ExN3jw7lwkOOq3/t+", "G3wZ8gDu6u4efTKrvmsEHv1YK8hQgMyBIdhh8ClIQBY=", zzasfVar, i, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        this.i.zzB("E");
        if (f4583a == null) {
            synchronized (f4584b) {
                try {
                    if (f4583a == null) {
                        f4583a = (String) this.j.invoke(null, null);
                    }
                } finally {
                }
            }
        }
        synchronized (this.i) {
            this.i.zzB(f4583a);
        }
    }
}
