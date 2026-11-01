package g;

import com.google.android.gms.internal.ads.zzbv;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzhn;
import com.google.android.gms.internal.ads.zzwj;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class aqw extends zzhn {
    public static final /* synthetic */ int k = 0;
    public final Object[] l;
    public final int m;
    public final int[] n;
    public final int[] o;
    public final HashMap p;
    public final int q;
    public final zzbv[] r;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public aqw(List list, zzwj zzwjVar) {
        this(r0, r1, zzwjVar);
        zzbv[] zzbvVarArr = new zzbv[list.size()];
        Iterator it = list.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            zzbvVarArr[i2] = ((elv) it.next()).zza();
            i2++;
        }
        Object[] objArr = new Object[list.size()];
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            objArr[i] = ((elv) it2.next()).zzb();
            i++;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aqw(zzbv[] zzbvVarArr, Object[] objArr, zzwj zzwjVar) {
        super(false, zzwjVar);
        int i = 0;
        this.r = zzbvVarArr;
        int length = zzbvVarArr.length;
        this.n = new int[length];
        this.o = new int[length];
        this.l = objArr;
        this.p = new HashMap();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i < zzbvVarArr.length) {
            zzbv zzbvVar = zzbvVarArr[i];
            this.r[i4] = zzbvVar;
            this.o[i4] = i2;
            this.n[i4] = i3;
            i2 += zzbvVar.zzc();
            i3 += this.r[i4].zzb();
            this.p.put(objArr[i4], Integer.valueOf(i4));
            i++;
            i4++;
        }
        this.q = i2;
        this.m = i3;
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final int d(int i) {
        return this.n[i];
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final int e(int i) {
        return this.o[i];
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final int f(Object obj) {
        Integer num = (Integer) this.p.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final zzbv g(int i) {
        return this.r[i];
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final int h(int i) {
        return zzen.zzc(this.n, i + 1, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final int i(int i) {
        return zzen.zzc(this.o, i + 1, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final Object j(int i) {
        return this.l[i];
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final int zzb() {
        return this.m;
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final int zzc() {
        return this.q;
    }
}
