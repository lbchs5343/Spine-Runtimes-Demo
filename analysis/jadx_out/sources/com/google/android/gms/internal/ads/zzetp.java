package com.google.android.gms.internal.ads;

import android.os.Bundle;
import g.edt;

/* loaded from: classes3.dex */
public final class zzetp implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f7537a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f7538b;

    /* renamed from: c, reason: collision with root package name */
    public final String f7539c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f7540d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f7541e;

    public zzetp(String str, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f7539c = str;
        this.f7540d = z;
        this.f7541e = z2;
        this.f7537a = z3;
        this.f7538b = z4;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        String str = this.f7539c;
        if (!str.isEmpty()) {
            bundle.putString("inspector_extras", str);
        }
        boolean z = this.f7540d;
        bundle.putInt("test_mode", z ? 1 : 0);
        boolean z2 = this.f7541e;
        bundle.putInt("linked_device", z2 ? 1 : 0);
        if (z || z2) {
            zzbce zzbceVar = zzbcn.zziP;
            edt edtVar = edt.f15376a;
            if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                bundle.putInt("risd", !this.f7537a ? 1 : 0);
            }
            if (((Boolean) edtVar.f15379d.zza(zzbcn.zziT)).booleanValue()) {
                bundle.putBoolean("collect_response_logs", this.f7538b);
            }
        }
    }
}
