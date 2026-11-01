package g;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzacu;
import com.google.android.gms.internal.ads.zzaea;
import com.google.android.gms.internal.ads.zzaeb;
import com.google.android.gms.internal.ads.zzaec;
import com.google.android.gms.internal.ads.zzann;
import com.google.android.gms.internal.ads.zzanw;
import com.google.android.gms.internal.ads.zzanx;
import com.google.android.gms.internal.ads.zzany;
import com.google.android.gms.internal.ads.zzaoa;
import com.google.android.gms.internal.ads.zzaob;
import com.google.android.gms.internal.ads.zzec;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzek;
import j$.util.Objects;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class vg implements btp, zzann {

    /* renamed from: a, reason: collision with root package name */
    public final Object f20152a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f20153b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f20154c;

    /* renamed from: d, reason: collision with root package name */
    public int f20155d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f20156e;

    public vg(zzaec zzaecVar, zzaea zzaeaVar, byte[] bArr, zzaeb[] zzaebVarArr, int i) {
        this.f20156e = zzaecVar;
        this.f20152a = zzaeaVar;
        this.f20153b = bArr;
        this.f20154c = zzaebVarArr;
        this.f20155d = i;
    }

    public vg(zzanw zzanwVar, int i) {
        this.f20154c = zzanwVar;
        this.f20156e = new zzec(new byte[5], 5);
        this.f20152a = new SparseArray();
        this.f20153b = new SparseIntArray();
        this.f20155d = i;
    }

    public vg(cdy cdyVar, AtomicInteger atomicInteger, AtomicInteger atomicInteger2, int i, btp btpVar) {
        this.f20154c = cdyVar;
        this.f20156e = atomicInteger;
        this.f20152a = atomicInteger2;
        this.f20155d = i;
        this.f20153b = btpVar;
    }

    public vg(dzh dzhVar) {
        ArrayList arrayList = (ArrayList) dzhVar.f15121f;
        int size = arrayList.size();
        this.f20156e = (String[]) ((ArrayList) dzhVar.i).toArray(new String[size]);
        int size2 = arrayList.size();
        double[] dArr = new double[size2];
        for (int i = 0; i < size2; i++) {
            dArr[i] = ((Double) arrayList.get(i)).doubleValue();
        }
        this.f20152a = dArr;
        ArrayList arrayList2 = (ArrayList) dzhVar.f15122g;
        int size3 = arrayList2.size();
        double[] dArr2 = new double[size3];
        for (int i2 = 0; i2 < size3; i2++) {
            dArr2[i2] = ((Double) arrayList2.get(i2)).doubleValue();
        }
        this.f20153b = dArr2;
        this.f20154c = new int[size];
        this.f20155d = 0;
    }

    @Override // g.btp
    public void i(x xVar) {
        Objects.toString((AtomicInteger) this.f20156e);
        synchronized (cdy.class) {
            try {
                int i = ((AtomicInteger) this.f20152a).get();
                int i2 = this.f20155d;
                if (i == i2) {
                    return;
                }
                ((AtomicInteger) this.f20152a).set(i2);
                cdy.i((cdy) this.f20154c, (btp) this.f20153b);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.btp
    public void o(int i) {
        Objects.toString((AtomicInteger) this.f20156e);
        synchronized (cdy.class) {
            try {
                if (((AtomicInteger) this.f20152a).get() == this.f20155d) {
                    return;
                }
                int incrementAndGet = ((AtomicInteger) this.f20156e).incrementAndGet();
                int i2 = cdy.f12715a;
                if (incrementAndGet == 2) {
                    cdy.h((cdy) this.f20154c, (btp) this.f20153b, i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzann
    public void zza(zzed zzedVar) {
        SparseArray sparseArray;
        zzek zzekVar;
        zzec zzecVar;
        int i;
        SparseArray sparseArray2;
        zzek zzekVar2;
        SparseArray sparseArray3 = (SparseArray) this.f20152a;
        SparseIntArray sparseIntArray = (SparseIntArray) this.f20153b;
        zzec zzecVar2 = (zzec) this.f20156e;
        zzanw zzanwVar = (zzanw) this.f20154c;
        SparseArray sparseArray4 = zzanwVar.p;
        SparseBooleanArray sparseBooleanArray = zzanwVar.f4406a;
        if (zzedVar.zzm() == 2) {
            zzek zzekVar3 = (zzek) zzanwVar.m.get(0);
            if ((zzedVar.zzm() & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0) {
                zzedVar.zzM(1);
                int zzq = zzedVar.zzq();
                int i2 = 3;
                zzedVar.zzM(3);
                zzedVar.zzG(zzecVar2, 2);
                zzecVar2.zzn(3);
                int i3 = 13;
                zzanwVar.j = zzecVar2.zzd(13);
                zzedVar.zzG(zzecVar2, 2);
                int i4 = 4;
                zzecVar2.zzn(4);
                int i5 = 12;
                zzedVar.zzM(zzecVar2.zzd(12));
                sparseArray3.clear();
                sparseIntArray.clear();
                int zzb = zzedVar.zzb();
                while (zzb > 0) {
                    zzedVar.zzG(zzecVar2, 5);
                    int zzd = zzecVar2.zzd(8);
                    zzecVar2.zzn(i2);
                    int zzd2 = zzecVar2.zzd(i3);
                    zzecVar2.zzn(i4);
                    int zzd3 = zzecVar2.zzd(i5);
                    int zzd4 = zzedVar.zzd();
                    int i6 = zzd4 + zzd3;
                    String str = null;
                    ArrayList arrayList = null;
                    int i7 = -1;
                    int i8 = 0;
                    while (true) {
                        if (zzedVar.zzd() >= i6) {
                            zzecVar = zzecVar2;
                            break;
                        }
                        int zzm = zzedVar.zzm();
                        zzecVar = zzecVar2;
                        int zzd5 = zzedVar.zzd() + zzedVar.zzm();
                        if (zzd5 > i6) {
                            break;
                        }
                        int i9 = zzb;
                        if (zzm == 5) {
                            long zzu = zzedVar.zzu();
                            if (zzu != 1094921523) {
                                if (zzu != 1161904947) {
                                    if (zzu != 1094921524) {
                                        if (zzu == 1212503619) {
                                            i = zzd5;
                                            sparseArray2 = sparseArray4;
                                            zzekVar2 = zzekVar3;
                                            i7 = 36;
                                        }
                                        i = zzd5;
                                        sparseArray2 = sparseArray4;
                                        zzekVar2 = zzekVar3;
                                    }
                                    i = zzd5;
                                    sparseArray2 = sparseArray4;
                                    zzekVar2 = zzekVar3;
                                    i7 = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DASH_ABR;
                                }
                                i = zzd5;
                                sparseArray2 = sparseArray4;
                                zzekVar2 = zzekVar3;
                                i7 = 135;
                            }
                            i = zzd5;
                            sparseArray2 = sparseArray4;
                            zzekVar2 = zzekVar3;
                            i7 = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA;
                        } else {
                            if (zzm != 106) {
                                if (zzm != 122) {
                                    if (zzm == 127) {
                                        int zzm2 = zzedVar.zzm();
                                        if (zzm2 != 21) {
                                            if (zzm2 == 14) {
                                                i = zzd5;
                                                sparseArray2 = sparseArray4;
                                                zzekVar2 = zzekVar3;
                                                i7 = 136;
                                            } else {
                                                if (zzm2 == 33) {
                                                    i = zzd5;
                                                    sparseArray2 = sparseArray4;
                                                    zzekVar2 = zzekVar3;
                                                    i7 = 139;
                                                }
                                                i = zzd5;
                                                sparseArray2 = sparseArray4;
                                                zzekVar2 = zzekVar3;
                                            }
                                        }
                                        i = zzd5;
                                        sparseArray2 = sparseArray4;
                                        zzekVar2 = zzekVar3;
                                        i7 = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DASH_ABR;
                                    } else if (zzm == 123) {
                                        i = zzd5;
                                        sparseArray2 = sparseArray4;
                                        zzekVar2 = zzekVar3;
                                        i7 = 138;
                                    } else if (zzm == 10) {
                                        String trim = zzedVar.zzB(3, StandardCharsets.UTF_8).trim();
                                        i8 = zzedVar.zzm();
                                        i = zzd5;
                                        sparseArray2 = sparseArray4;
                                        zzekVar2 = zzekVar3;
                                        str = trim;
                                    } else if (zzm == 89) {
                                        ArrayList arrayList2 = new ArrayList();
                                        while (zzedVar.zzd() < zzd5) {
                                            int i10 = zzd5;
                                            String trim2 = zzedVar.zzB(3, StandardCharsets.UTF_8).trim();
                                            int zzm3 = zzedVar.zzm();
                                            SparseArray sparseArray5 = sparseArray4;
                                            byte[] bArr = new byte[4];
                                            zzedVar.zzH(bArr, 0, 4);
                                            arrayList2.add(new zzanx(trim2, zzm3, bArr));
                                            sparseArray4 = sparseArray5;
                                            zzd5 = i10;
                                            zzekVar3 = zzekVar3;
                                        }
                                        i = zzd5;
                                        sparseArray2 = sparseArray4;
                                        zzekVar2 = zzekVar3;
                                        arrayList = arrayList2;
                                        i7 = 89;
                                    } else {
                                        i = zzd5;
                                        sparseArray2 = sparseArray4;
                                        zzekVar2 = zzekVar3;
                                        if (zzm == 111) {
                                            i7 = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FALLBACK_SW_DEC;
                                        }
                                    }
                                }
                                i = zzd5;
                                sparseArray2 = sparseArray4;
                                zzekVar2 = zzekVar3;
                                i7 = 135;
                            }
                            i = zzd5;
                            sparseArray2 = sparseArray4;
                            zzekVar2 = zzekVar3;
                            i7 = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA;
                        }
                        zzedVar.zzM(i - zzedVar.zzd());
                        sparseArray4 = sparseArray2;
                        zzecVar2 = zzecVar;
                        zzb = i9;
                        zzekVar3 = zzekVar2;
                    }
                    SparseArray sparseArray6 = sparseArray4;
                    zzek zzekVar4 = zzekVar3;
                    int i11 = zzb;
                    zzedVar.zzL(i6);
                    zzany zzanyVar = new zzany(i7, str, i8, arrayList, Arrays.copyOfRange(zzedVar.zzN(), zzd4, i6));
                    if (zzd == 6 || zzd == 5) {
                        zzd = zzanyVar.zza;
                    }
                    zzb = i11 - (zzd3 + 5);
                    if (!sparseBooleanArray.get(zzd2)) {
                        zzaob zzb2 = zzanwVar.f4412g.zzb(zzd, zzanyVar);
                        sparseIntArray.put(zzd2, zzd2);
                        sparseArray3.put(zzd2, zzb2);
                    }
                    sparseArray4 = sparseArray6;
                    zzecVar2 = zzecVar;
                    zzekVar3 = zzekVar4;
                    i4 = 4;
                    i2 = 3;
                    i3 = 13;
                    i5 = 12;
                }
                SparseArray sparseArray7 = sparseArray4;
                zzek zzekVar5 = zzekVar3;
                int size = sparseIntArray.size();
                int i12 = 0;
                while (i12 < size) {
                    int keyAt = sparseIntArray.keyAt(i12);
                    int valueAt = sparseIntArray.valueAt(i12);
                    sparseBooleanArray.put(keyAt, true);
                    zzanwVar.l.put(valueAt, true);
                    zzaob zzaobVar = (zzaob) sparseArray3.valueAt(i12);
                    if (zzaobVar != null) {
                        zzacu zzacuVar = zzanwVar.f4411f;
                        zzaoa zzaoaVar = new zzaoa(zzq, keyAt, 8192);
                        zzekVar = zzekVar5;
                        zzaobVar.zzb(zzekVar, zzacuVar, zzaoaVar);
                        sparseArray = sparseArray7;
                        sparseArray.put(valueAt, zzaobVar);
                    } else {
                        sparseArray = sparseArray7;
                        zzekVar = zzekVar5;
                    }
                    i12++;
                    zzekVar5 = zzekVar;
                    sparseArray7 = sparseArray;
                }
                sparseArray7.remove(this.f20155d);
                zzanwVar.f4411f.zzD();
                zzanwVar.k = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzann
    public void zzb(zzek zzekVar, zzacu zzacuVar, zzaoa zzaoaVar) {
    }
}
