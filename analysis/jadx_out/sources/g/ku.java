package g;

import android.util.Base64;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class ku {

    /* renamed from: a, reason: collision with root package name */
    public final String f19566a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f19567b;

    /* renamed from: c, reason: collision with root package name */
    public final cq f19568c;

    public ku(String str, byte[] bArr, cq cqVar) {
        this.f19566a = str;
        this.f19567b = bArr;
        this.f19568c = cqVar;
    }

    public static fpd d() {
        fpd fpdVar = new fpd(2);
        cq cqVar = cq.DEFAULT;
        if (cqVar == null) {
            throw new NullPointerException("Null priority");
        }
        fpdVar.f17188d = cqVar;
        return fpdVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ku) {
            ku kuVar = (ku) obj;
            if (this.f19566a.equals(kuVar.f19566a) && Arrays.equals(this.f19567b, kuVar.f19567b) && this.f19568c.equals(kuVar.f19568c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f19566a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f19567b)) * 1000003) ^ this.f19568c.hashCode();
    }

    public final String toString() {
        byte[] bArr = this.f19567b;
        String encodeToString = bArr == null ? "" : Base64.encodeToString(bArr, 2);
        StringBuilder sb = new StringBuilder("TransportContext(");
        sb.append(this.f19566a);
        sb.append(", ");
        sb.append(this.f19568c);
        sb.append(", ");
        return awf.ad(sb, encodeToString, ")");
    }
}
