package g;

import com.google.android.gms.internal.ads.zzab;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzbw;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzfwh;
import com.google.android.gms.internal.ads.zzfzo;
import com.google.android.gms.internal.ads.zzgae;
import com.google.android.gms.internal.ads.zzko;
import com.google.android.gms.internal.ads.zzls;
import com.google.android.gms.internal.ads.zzub;
import com.google.android.gms.internal.ads.zzuo;
import com.google.android.gms.internal.ads.zzup;
import com.google.android.gms.internal.ads.zzwg;
import com.google.android.gms.internal.ads.zzwi;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzyd;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;

/* loaded from: classes3.dex */
public final class dol implements zzup, zzuo {

    /* renamed from: e, reason: collision with root package name */
    public zzuo f14531e;

    /* renamed from: f, reason: collision with root package name */
    public final zzup[] f14532f;
    public zzwr h;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f14529c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f14530d = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public zzub f14527a = new zzub(zzfzo.zzn(), zzfzo.zzn());

    /* renamed from: g, reason: collision with root package name */
    public final IdentityHashMap f14533g = new IdentityHashMap();

    /* renamed from: b, reason: collision with root package name */
    public zzup[] f14528b = new zzup[0];

    public dol(long[] jArr, zzup... zzupVarArr) {
        this.f14532f = zzupVarArr;
        for (int i = 0; i < zzupVarArr.length; i++) {
            long j = jArr[i];
            if (j != 0) {
                this.f14532f[i] = new gva(zzupVarArr[i], j);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zza(long j, zzls zzlsVar) {
        zzup[] zzupVarArr = this.f14528b;
        return (zzupVarArr.length > 0 ? zzupVarArr[0] : this.f14532f[0]).zza(j, zzlsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final long zzb() {
        return this.f14527a.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final long zzc() {
        return this.f14527a.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zzd() {
        long j = -9223372036854775807L;
        for (zzup zzupVar : this.f14528b) {
            long zzd = zzupVar.zzd();
            if (zzd != -9223372036854775807L) {
                if (j == -9223372036854775807L) {
                    for (zzup zzupVar2 : this.f14528b) {
                        if (zzupVar2 == zzupVar) {
                            break;
                        }
                        if (zzupVar2.zze(zzd) != zzd) {
                            throw new IllegalStateException("Unexpected child seekToUs result.");
                        }
                    }
                    j = zzd;
                } else if (zzd != j) {
                    throw new IllegalStateException("Conflicting discontinuities.");
                }
            } else if (j != -9223372036854775807L && zzupVar.zze(j) != j) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zze(long j) {
        long zze = this.f14528b[0].zze(j);
        int i = 1;
        while (true) {
            zzup[] zzupVarArr = this.f14528b;
            if (i >= zzupVarArr.length) {
                return zze;
            }
            if (zzupVarArr[i].zze(zze) != zze) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zzf(zzyd[] zzydVarArr, boolean[] zArr, zzwg[] zzwgVarArr, boolean[] zArr2, long j) {
        int length;
        IdentityHashMap identityHashMap;
        int[] iArr;
        int[] iArr2;
        int length2 = zzydVarArr.length;
        int[] iArr3 = new int[length2];
        int[] iArr4 = new int[length2];
        int i = 0;
        while (true) {
            length = zzydVarArr.length;
            identityHashMap = this.f14533g;
            if (i >= length) {
                break;
            }
            zzwg zzwgVar = zzwgVarArr[i];
            Integer num = zzwgVar == null ? null : (Integer) identityHashMap.get(zzwgVar);
            iArr3[i] = num == null ? -1 : num.intValue();
            zzyd zzydVar = zzydVarArr[i];
            if (zzydVar != null) {
                String str = zzydVar.zze().zzb;
                iArr4[i] = Integer.parseInt(str.substring(0, str.indexOf(":")));
            } else {
                iArr4[i] = -1;
            }
            i++;
        }
        identityHashMap.clear();
        zzwg[] zzwgVarArr2 = new zzwg[length];
        zzwg[] zzwgVarArr3 = new zzwg[length];
        zzyd[] zzydVarArr2 = new zzyd[length];
        zzup[] zzupVarArr = this.f14532f;
        ArrayList arrayList = new ArrayList(zzupVarArr.length);
        long j2 = j;
        int i2 = 0;
        while (i2 < zzupVarArr.length) {
            int i3 = 0;
            while (i3 < zzydVarArr.length) {
                zzwgVarArr3[i3] = iArr3[i3] == i2 ? zzwgVarArr[i3] : null;
                if (iArr4[i3] == i2) {
                    zzyd zzydVar2 = zzydVarArr[i3];
                    zzydVar2.getClass();
                    iArr = iArr4;
                    iArr2 = iArr3;
                    zzbw zzbwVar = (zzbw) this.f14530d.get(zzydVar2.zze());
                    zzbwVar.getClass();
                    zzydVarArr2[i3] = new bqg(zzydVar2, zzbwVar);
                } else {
                    iArr = iArr4;
                    iArr2 = iArr3;
                    zzydVarArr2[i3] = null;
                }
                i3++;
                iArr4 = iArr;
                iArr3 = iArr2;
            }
            int[] iArr5 = iArr4;
            int[] iArr6 = iArr3;
            ArrayList arrayList2 = arrayList;
            zzup[] zzupVarArr2 = zzupVarArr;
            int i4 = i2;
            long zzf = zzupVarArr[i2].zzf(zzydVarArr2, zArr, zzwgVarArr3, zArr2, j2);
            if (i4 == 0) {
                j2 = zzf;
            } else if (zzf != j2) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z = false;
            for (int i5 = 0; i5 < zzydVarArr.length; i5++) {
                if (iArr5[i5] == i4) {
                    zzwg zzwgVar2 = zzwgVarArr3[i5];
                    zzwgVar2.getClass();
                    zzwgVarArr2[i5] = zzwgVar2;
                    identityHashMap.put(zzwgVar2, Integer.valueOf(i4));
                    z = true;
                } else if (iArr6[i5] == i4) {
                    zzdb.zzf(zzwgVarArr3[i5] == null);
                }
            }
            if (z) {
                arrayList2.add(zzupVarArr2[i4]);
            }
            i2 = i4 + 1;
            arrayList = arrayList2;
            zzupVarArr = zzupVarArr2;
            iArr4 = iArr5;
            iArr3 = iArr6;
        }
        ArrayList arrayList3 = arrayList;
        System.arraycopy(zzwgVarArr2, 0, zzwgVarArr, 0, length);
        this.f14528b = (zzup[]) arrayList3.toArray(new zzup[0]);
        this.f14527a = new zzub(arrayList3, zzgae.zzb(arrayList3, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzvc
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                return ((zzup) obj).zzh().zzc();
            }
        }));
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.zzwh
    public final /* bridge */ /* synthetic */ void zzg(zzwi zzwiVar) {
        zzuo zzuoVar = this.f14531e;
        zzuoVar.getClass();
        zzuoVar.zzg(this);
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final zzwr zzh() {
        zzwr zzwrVar = this.h;
        zzwrVar.getClass();
        return zzwrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzuo
    public final void zzi(zzup zzupVar) {
        zzup[] zzupVarArr;
        ArrayList arrayList = this.f14529c;
        arrayList.remove(zzupVar);
        if (arrayList.isEmpty()) {
            int i = 0;
            int i2 = 0;
            while (true) {
                zzupVarArr = this.f14532f;
                if (i >= zzupVarArr.length) {
                    break;
                }
                i2 += zzupVarArr[i].zzh().zzb;
                i++;
            }
            zzbw[] zzbwVarArr = new zzbw[i2];
            int i3 = 0;
            for (int i4 = 0; i4 < zzupVarArr.length; i4++) {
                zzwr zzh = zzupVarArr[i4].zzh();
                int i5 = zzh.zzb;
                int i6 = 0;
                while (i6 < i5) {
                    zzbw zzb = zzh.zzb(i6);
                    zzad[] zzadVarArr = new zzad[zzb.zza];
                    for (int i7 = 0; i7 < zzb.zza; i7++) {
                        zzad zzb2 = zzb.zzb(i7);
                        zzab zzb3 = zzb2.zzb();
                        String str = zzb2.zza;
                        if (str == null) {
                            str = "";
                        }
                        zzb3.zzL(i4 + ":" + str);
                        zzadVarArr[i7] = zzb3.zzaf();
                    }
                    zzbw zzbwVar = new zzbw(i4 + ":" + zzb.zzb, zzadVarArr);
                    this.f14530d.put(zzbwVar, zzb);
                    zzbwVarArr[i3] = zzbwVar;
                    i6++;
                    i3++;
                }
            }
            this.h = new zzwr(zzbwVarArr);
            zzuo zzuoVar = this.f14531e;
            zzuoVar.getClass();
            zzuoVar.zzi(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzj(long j, boolean z) {
        for (zzup zzupVar : this.f14528b) {
            zzupVar.zzj(j, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzk() {
        int i = 0;
        while (true) {
            zzup[] zzupVarArr = this.f14532f;
            if (i >= zzupVarArr.length) {
                return;
            }
            zzupVarArr[i].zzk();
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzl(zzuo zzuoVar, long j) {
        this.f14531e = zzuoVar;
        ArrayList arrayList = this.f14529c;
        zzup[] zzupVarArr = this.f14532f;
        Collections.addAll(arrayList, zzupVarArr);
        for (zzup zzupVar : zzupVarArr) {
            zzupVar.zzl(this, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final void zzm(long j) {
        this.f14527a.zzm(j);
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final boolean zzo(zzko zzkoVar) {
        ArrayList arrayList = this.f14529c;
        if (arrayList.isEmpty()) {
            return this.f14527a.zzo(zzkoVar);
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((zzup) arrayList.get(i)).zzo(zzkoVar);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final boolean zzp() {
        return this.f14527a.zzp();
    }
}
