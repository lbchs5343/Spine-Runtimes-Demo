package g;

import com.google.android.gms.internal.ads.zzaoy;
import com.google.android.gms.internal.ads.zzaph;
import com.google.android.gms.internal.ads.zzaql;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class egj {

    /* renamed from: a, reason: collision with root package name */
    public final List f15485a;

    /* renamed from: b, reason: collision with root package name */
    public final long f15486b;

    /* renamed from: c, reason: collision with root package name */
    public final long f15487c;

    /* renamed from: d, reason: collision with root package name */
    public long f15488d;

    /* renamed from: e, reason: collision with root package name */
    public final long f15489e;

    /* renamed from: f, reason: collision with root package name */
    public final String f15490f;

    /* renamed from: g, reason: collision with root package name */
    public final String f15491g;
    public final long h;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public egj(String str, zzaoy zzaoyVar) {
        this(str, r2, r3, r5, r7, r9, r0);
        String str2 = zzaoyVar.zzb;
        long j = zzaoyVar.zzc;
        long j2 = zzaoyVar.zzd;
        long j3 = zzaoyVar.zze;
        long j4 = zzaoyVar.zzf;
        List list = zzaoyVar.zzh;
        if (list == 0) {
            Map map = zzaoyVar.zzg;
            list = new ArrayList(map.size());
            for (Map.Entry entry : map.entrySet()) {
                list.add(new zzaph((String) entry.getKey(), (String) entry.getValue()));
            }
        }
    }

    public egj(String str, String str2, long j, long j2, long j3, long j4, List list) {
        this.f15490f = str;
        this.f15491g = true == "".equals(str2) ? null : str2;
        this.f15486b = j;
        this.f15487c = j2;
        this.f15489e = j3;
        this.h = j4;
        this.f15485a = list;
    }

    public static egj i(api apiVar) {
        if (zzaql.h(apiVar) != 538247942) {
            throw new IOException();
        }
        String l = zzaql.l(apiVar);
        String l2 = zzaql.l(apiVar);
        long j = zzaql.j(apiVar);
        long j2 = zzaql.j(apiVar);
        long j3 = zzaql.j(apiVar);
        long j4 = zzaql.j(apiVar);
        int h = zzaql.h(apiVar);
        if (h < 0) {
            throw new IOException(awf.ac(h, "readHeaderList size="));
        }
        List arrayList = h == 0 ? Collections.EMPTY_LIST : new ArrayList();
        for (int i = 0; i < h; i++) {
            arrayList.add(new zzaph(zzaql.l(apiVar).intern(), zzaql.l(apiVar).intern()));
        }
        return new egj(l, l2, j, j2, j3, j4, arrayList);
    }
}
