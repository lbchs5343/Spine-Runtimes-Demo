package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzaxl extends zzaxt {

    /* renamed from: a, reason: collision with root package name */
    public final StackTraceElement[] f4588a;

    public zzaxl(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(zzawfVar, "XiB4JwXCMuAhsrPKvk3dS2LvKyxjCmXSaJ2VZGWg6jlAdLRjKnhTMhSQBaeXXZDY", "3gV4tnMlvvkjR90RI+zlkPr5OOXNb6rIM0OBAfjFnhQ=", zzasfVar, i, 45);
        this.f4588a = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        StackTraceElement[] stackTraceElementArr = this.f4588a;
        if (stackTraceElementArr != null) {
            zzavw zzavwVar = new zzavw((String) this.j.invoke(null, stackTraceElementArr));
            synchronized (this.i) {
                try {
                    this.i.zzF(zzavwVar.zza.longValue());
                    if (zzavwVar.zzb.booleanValue()) {
                        this.i.zzac(true != zzavwVar.zzc.booleanValue() ? 2 : 1);
                    } else {
                        this.i.zzac(3);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
