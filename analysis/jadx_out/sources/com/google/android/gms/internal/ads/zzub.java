package com.google.android.gms.internal.ads;

import g.gzs;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzub implements zzwi {

    /* renamed from: a, reason: collision with root package name */
    public final zzfzo f8897a;

    /* renamed from: b, reason: collision with root package name */
    public long f8898b;

    public zzub(List list, List list2) {
        zzfzl zzfzlVar = new zzfzl();
        zzdb.zzd(list.size() == list2.size());
        for (int i = 0; i < list.size(); i++) {
            zzfzlVar.zzf(new gzs((zzwi) list.get(i), (List) list2.get(i)));
        }
        this.f8897a = zzfzlVar.zzi();
        this.f8898b = -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzwi
    public final long zzb() {
        int i = 0;
        long j = Long.MAX_VALUE;
        long j2 = Long.MAX_VALUE;
        while (true) {
            zzfzo zzfzoVar = this.f8897a;
            if (i >= zzfzoVar.size()) {
                break;
            }
            gzs gzsVar = (gzs) zzfzoVar.get(i);
            zzwi zzwiVar = gzsVar.f19067a;
            zzfzo zzfzoVar2 = gzsVar.f19068b;
            long zzb = zzwiVar.zzb();
            if ((zzfzoVar2.contains(1) || zzfzoVar2.contains(2) || zzfzoVar2.contains(4)) && zzb != Long.MIN_VALUE) {
                j = Math.min(j, zzb);
            }
            if (zzb != Long.MIN_VALUE) {
                j2 = Math.min(j2, zzb);
            }
            i++;
        }
        if (j != Long.MAX_VALUE) {
            this.f8898b = j;
            return j;
        }
        if (j2 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        long j3 = this.f8898b;
        return j3 != -9223372036854775807L ? j3 : j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzwi
    public final long zzc() {
        int i = 0;
        long j = Long.MAX_VALUE;
        while (true) {
            zzfzo zzfzoVar = this.f8897a;
            if (i >= zzfzoVar.size()) {
                break;
            }
            long zzc = ((gzs) zzfzoVar.get(i)).f19067a.zzc();
            if (zzc != Long.MIN_VALUE) {
                j = Math.min(j, zzc);
            }
            i++;
        }
        if (j == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzwi
    public final void zzm(long j) {
        int i = 0;
        while (true) {
            zzfzo zzfzoVar = this.f8897a;
            if (i >= zzfzoVar.size()) {
                return;
            }
            ((gzs) zzfzoVar.get(i)).zzm(j);
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzwi
    public final boolean zzo(zzko zzkoVar) {
        boolean z;
        boolean z2 = false;
        do {
            long zzc = zzc();
            if (zzc == Long.MIN_VALUE) {
                break;
            }
            int i = 0;
            z = false;
            while (true) {
                zzfzo zzfzoVar = this.f8897a;
                if (i >= zzfzoVar.size()) {
                    break;
                }
                long zzc2 = ((gzs) zzfzoVar.get(i)).f19067a.zzc();
                boolean z3 = zzc2 != Long.MIN_VALUE && zzc2 <= zzkoVar.zza;
                if (zzc2 == zzc || z3) {
                    z |= ((gzs) zzfzoVar.get(i)).f19067a.zzo(zzkoVar);
                }
                i++;
            }
            z2 |= z;
        } while (z);
        return z2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzwi
    public final boolean zzp() {
        int i = 0;
        while (true) {
            zzfzo zzfzoVar = this.f8897a;
            if (i >= zzfzoVar.size()) {
                return false;
            }
            if (((gzs) zzfzoVar.get(i)).f19067a.zzp()) {
                return true;
            }
            i++;
        }
    }
}
