package g;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class csl {

    /* renamed from: a, reason: collision with root package name */
    public final cep f13435a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f13436b;

    public csl(cep cepVar, byte[] bArr) {
        if (cepVar == null) {
            throw new NullPointerException("encoding is null");
        }
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        this.f13435a = cepVar;
        this.f13436b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof csl)) {
            return false;
        }
        csl cslVar = (csl) obj;
        if (this.f13435a.equals(cslVar.f13435a)) {
            return Arrays.equals(this.f13436b, cslVar.f13436b);
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f13435a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f13436b);
    }

    public final String toString() {
        return "EncodedPayload{encoding=" + this.f13435a + ", bytes=[...]}";
    }
}
