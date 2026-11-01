package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class zzeuv implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f7578a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f7579b = false;

    /* renamed from: c, reason: collision with root package name */
    public final zzfth f7580c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f7581d;

    /* renamed from: e, reason: collision with root package name */
    public final zzfth f7582e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f7583f;

    public zzeuv(zzfth zzfthVar, zzfth zzfthVar2, boolean z, boolean z2, boolean z3) {
        this.f7580c = zzfthVar;
        this.f7582e = zzfthVar2;
        this.f7583f = z;
        this.f7578a = z2;
        this.f7581d = z3;
    }

    public zzeuv(boolean z) {
        this.f7581d = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0068, code lost:
    
        if (((java.lang.Boolean) g.edt.f15376a.f15379d.zza(com.google.android.gms.internal.ads.zzbcn.zzde)).booleanValue() == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x007e, code lost:
    
        r2 = r6.f7582e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0084, code lost:
    
        if (r2.zzc() == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0086, code lost:
    
        r1.putString("paidv2_id_android", r2.zza());
        r1.putLong("paidv2_creation_time_android", r2.zzb().toEpochMilli());
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x009c, code lost:
    
        r1.putBoolean("paidv2_pub_option_android", r6.f7583f);
        r1.putBoolean("paidv2_user_option_android", r6.f7578a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007c, code lost:
    
        if (((java.lang.Boolean) g.edt.f15376a.f15379d.zza(com.google.android.gms.internal.ads.zzbcn.zzdg)).booleanValue() != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0036, code lost:
    
        if (((java.lang.Boolean) g.edt.f15376a.f15379d.zza(com.google.android.gms.internal.ads.zzbcn.zzdf)).booleanValue() != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0022, code lost:
    
        if (((java.lang.Boolean) g.edt.f15376a.f15379d.zza(com.google.android.gms.internal.ads.zzbcn.zzdd)).booleanValue() == false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0038, code lost:
    
        r3 = r6.f7580c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x003e, code lost:
    
        if (r3.zzc() == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0040, code lost:
    
        r1.putString("paidv1_id_android", r3.zza());
        r1.putLong("paidv1_creation_time_android", r3.zzb().toEpochMilli());
     */
    @Override // com.google.android.gms.internal.ads.zzevy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (this.f7579b) {
            return;
        }
        Bundle zza = zzfgc.zza(bundle, "pii");
        boolean z = this.f7581d;
        if (!z) {
        }
        if (z) {
        }
        if (!z) {
        }
        if (z) {
        }
        if (zza.isEmpty()) {
            return;
        }
        bundle.putBundle("pii", zza);
    }
}
