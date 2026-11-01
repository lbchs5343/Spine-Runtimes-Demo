package j$.time.format;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class e implements f {

    /* renamed from: a, reason: collision with root package name */
    public final f[] f20529a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f20530b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public e(List list, boolean z) {
        this((f[]) r2.toArray(new f[r2.size()]), z);
        ArrayList arrayList = (ArrayList) list;
    }

    public e(f[] fVarArr, boolean z) {
        this.f20529a = fVarArr;
        this.f20530b = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002c, code lost:
    
        if (r2 != false) goto L11;
     */
    @Override // j$.time.format.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean i(p pVar, StringBuilder sb) {
        int length = sb.length();
        boolean z = this.f20530b;
        if (z) {
            pVar.f20562c++;
        }
        try {
            for (f fVar : this.f20529a) {
                if (!fVar.i(pVar, sb)) {
                    sb.setLength(length);
                }
            }
        } finally {
            if (z) {
                pVar.f20562c--;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        f[] fVarArr = this.f20529a;
        if (fVarArr != null) {
            boolean z = this.f20530b;
            sb.append(z ? "[" : "(");
            for (f fVar : fVarArr) {
                sb.append(fVar);
            }
            sb.append(z ? "]" : ")");
        }
        return sb.toString();
    }
}
