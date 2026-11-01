package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzaxn extends zzaxt {

    /* renamed from: a, reason: collision with root package name */
    public final zzawm f4589a;

    /* renamed from: b, reason: collision with root package name */
    public final long f4590b;

    public zzaxn(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2, zzawm zzawmVar) {
        super(zzawfVar, "Atq0HLNiKHjz80ZnAFWvUPfMlGQHg7AXdMxxDL1JZ6bmQmTFxmAmKhIDk2Jnayuk", "Su/GzywZakXq4glBT/l81JrPkq4+JC0EaqCjCuVscxM=", zzasfVar, i, 53);
        this.f4589a = zzawmVar;
        if (zzawmVar != null) {
            this.f4590b = zzawmVar.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        if (this.f4589a != null) {
            this.i.zzP(((Long) this.j.invoke(null, Long.valueOf(this.f4590b))).longValue());
        }
    }
}
