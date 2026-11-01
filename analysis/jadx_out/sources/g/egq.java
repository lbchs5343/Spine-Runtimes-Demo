package g;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class egq {

    /* renamed from: a, reason: collision with root package name */
    public int f15505a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f15506b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f15507c;

    /* renamed from: d, reason: collision with root package name */
    public final String f15508d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f15509e;

    /* renamed from: f, reason: collision with root package name */
    public long f15510f;

    /* renamed from: g, reason: collision with root package name */
    public final long[] f15511g;
    public final /* synthetic */ fxy h;
    public final ArrayList i;
    public abv j;

    public egq(fxy fxyVar, String str) {
        bff.p(str, "key");
        this.h = fxyVar;
        this.f15508d = str;
        fxyVar.getClass();
        this.f15511g = new long[2];
        this.i = new ArrayList();
        this.f15506b = new ArrayList();
        StringBuilder sb = new StringBuilder(str);
        sb.append('.');
        int length = sb.length();
        for (int i = 0; i < 2; i++) {
            sb.append(i);
            this.i.add(new File(this.h.q, sb.toString()));
            sb.append(".tmp");
            this.f15506b.add(new File(this.h.q, sb.toString()));
            sb.setLength(length);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v12, types: [g.dsz] */
    public final px k() {
        byte[] bArr = erq.f16043c;
        if (!this.f15507c) {
            return null;
        }
        fxy fxyVar = this.h;
        if (!fxyVar.m && (this.j != null || this.f15509e)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        long[] jArr = (long[]) this.f15511g.clone();
        for (int i = 0; i < 2; i++) {
            try {
                File file = (File) this.i.get(i);
                bff.p(file, "file");
                Logger logger = aro.f10725a;
                dix dixVar = new dix(new FileInputStream(file), dme.n);
                if (!fxyVar.m) {
                    this.f15505a++;
                    dixVar = new dsz(dixVar, fxyVar, this);
                }
                arrayList.add(dixVar);
            } catch (FileNotFoundException unused) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    erq.m((cpv) it.next());
                }
                try {
                    fxyVar.ab(this);
                    return null;
                } catch (IOException unused2) {
                    return null;
                }
            }
        }
        return new px(this.h, this.f15508d, this.f15510f, arrayList, jArr);
    }

    public final void l(ago agoVar) {
        bff.p(agoVar, "writer");
        for (long j : this.f15511g) {
            agoVar.writeByte(32);
            agoVar.l(j);
        }
    }
}
