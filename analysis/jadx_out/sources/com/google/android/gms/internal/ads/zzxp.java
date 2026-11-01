package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import j$.util.Objects;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzxp extends zzcb {

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray f8941a;

    /* renamed from: b, reason: collision with root package name */
    public final SparseBooleanArray f8942b;
    public final boolean zzC;
    public final boolean zzD;
    public final boolean zzE;
    public final boolean zzF;
    public final boolean zzG;
    public final boolean zzH;
    public final boolean zzI;
    public final boolean zzJ;
    public final boolean zzK;
    public final boolean zzL;
    public final boolean zzM;
    public final boolean zzN;
    public final boolean zzO;
    public final boolean zzP;
    public final boolean zzQ;

    static {
        new zzxp(new zzxo());
        Integer.toString(1000, 36);
        Integer.toString(1001, 36);
        Integer.toString(1002, 36);
        Integer.toString(1003, 36);
        Integer.toString(1004, 36);
        Integer.toString(1005, 36);
        Integer.toString(PluginConstants.ERROR_PLUGIN_SIGN_VERIFY, 36);
        Integer.toString(PluginConstants.ERROR_PLUGIN_FETCH, 36);
        Integer.toString(1008, 36);
        Integer.toString(1009, 36);
        Integer.toString(1010, 36);
        Integer.toString(AVMDLDataLoader.KeyIsGetCostLog, 36);
        Integer.toString(1012, 36);
        Integer.toString(1013, 36);
        Integer.toString(1014, 36);
        Integer.toString(1015, 36);
        Integer.toString(1016, 36);
        Integer.toString(1017, 36);
        Integer.toString(1018, 36);
    }

    public zzxp(zzxo zzxoVar) {
        super(zzxoVar);
        this.zzC = zzxoVar.n;
        this.zzD = false;
        this.zzE = zzxoVar.q;
        this.zzF = false;
        this.zzG = zzxoVar.m;
        this.zzH = false;
        this.zzI = false;
        this.zzJ = false;
        this.zzK = false;
        this.zzL = zzxoVar.l;
        this.zzM = zzxoVar.p;
        this.zzN = zzxoVar.r;
        this.zzO = false;
        this.zzP = zzxoVar.t;
        this.zzQ = false;
        this.f8941a = zzxoVar.o;
        this.f8942b = zzxoVar.s;
    }

    public static zzxp zzd(Context context) {
        return new zzxp(new zzxo(context));
    }

    @Override // com.google.android.gms.internal.ads.zzcb
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzxp.class == obj.getClass()) {
            zzxp zzxpVar = (zzxp) obj;
            if (super.equals(zzxpVar) && this.zzC == zzxpVar.zzC && this.zzE == zzxpVar.zzE && this.zzG == zzxpVar.zzG && this.zzL == zzxpVar.zzL && this.zzM == zzxpVar.zzM && this.zzN == zzxpVar.zzN && this.zzP == zzxpVar.zzP) {
                SparseBooleanArray sparseBooleanArray = zzxpVar.f8942b;
                SparseBooleanArray sparseBooleanArray2 = this.f8942b;
                int size = sparseBooleanArray2.size();
                if (sparseBooleanArray.size() == size) {
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            SparseArray sparseArray = zzxpVar.f8941a;
                            SparseArray sparseArray2 = this.f8941a;
                            int size2 = sparseArray2.size();
                            if (sparseArray.size() == size2) {
                                for (int i2 = 0; i2 < size2; i2++) {
                                    int indexOfKey = sparseArray.indexOfKey(sparseArray2.keyAt(i2));
                                    if (indexOfKey >= 0) {
                                        Map map = (Map) sparseArray2.valueAt(i2);
                                        Map map2 = (Map) sparseArray.valueAt(indexOfKey);
                                        if (map2.size() == map.size()) {
                                            for (Map.Entry entry : map.entrySet()) {
                                                zzwr zzwrVar = (zzwr) entry.getKey();
                                                if (map2.containsKey(zzwrVar) && Objects.equals(entry.getValue(), map2.get(zzwrVar))) {
                                                }
                                            }
                                        }
                                    }
                                }
                                return true;
                            }
                        } else {
                            if (sparseBooleanArray.indexOfKey(sparseBooleanArray2.keyAt(i)) < 0) {
                                break;
                            }
                            i++;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcb
    public final int hashCode() {
        return (((((((((((((((super.hashCode() + 31) * 31) + (this.zzC ? 1 : 0)) * 961) + (this.zzE ? 1 : 0)) * 961) + (this.zzG ? 1 : 0)) * 28629151) + (this.zzL ? 1 : 0)) * 31) + (this.zzM ? 1 : 0)) * 31) + (this.zzN ? 1 : 0)) * 961) + (this.zzP ? 1 : 0)) * 31;
    }

    public final zzxo zzc() {
        return new zzxo(this);
    }

    @Deprecated
    public final zzxq zze(int i, zzwr zzwrVar) {
        Map map = (Map) this.f8941a.get(i);
        if (map != null) {
            return (zzxq) map.get(zzwrVar);
        }
        return null;
    }

    public final boolean zzf(int i) {
        return this.f8942b.get(i);
    }

    @Deprecated
    public final boolean zzg(int i, zzwr zzwrVar) {
        Map map = (Map) this.f8941a.get(i);
        return map != null && map.containsKey(zzwrVar);
    }
}
