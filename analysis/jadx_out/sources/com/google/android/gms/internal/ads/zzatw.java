package com.google.android.gms.internal.ads;

import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager;
import g.dgd;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzatw implements PackageManager.OnChecksumsReadyListener {

    /* renamed from: a, reason: collision with root package name */
    public final zzgfa f4486a = zzgfa.zze();

    @Override // android.content.pm.PackageManager.OnChecksumsReadyListener
    public final void onChecksumsReady(List list) {
        int type;
        byte[] value;
        if (list == null) {
            this.f4486a.zzc("");
            return;
        }
        try {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ApkChecksum ac = dgd.ac(list.get(i));
                type = ac.getType();
                if (type == 8) {
                    zzgfa zzgfaVar = this.f4486a;
                    zzgcb zzf = zzgcb.zzi().zzf();
                    value = ac.getValue();
                    zzgfaVar.zzc(zzf.zzj(value, 0, value.length));
                    return;
                }
            }
        } catch (Throwable unused) {
        }
        this.f4486a.zzc("");
    }
}
