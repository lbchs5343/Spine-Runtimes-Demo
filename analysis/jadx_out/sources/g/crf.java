package g;

import java.io.IOException;

/* loaded from: classes3.dex */
public abstract class crf implements Cloneable {
    public boolean i = false;
    public final cys j;
    public cys k;

    public crf(cys cysVar) {
        this.j = cysVar;
        this.k = (cys) cysVar.a(4);
    }

    public final void l(cys cysVar) {
        if (this.i) {
            p();
            this.i = false;
        }
        cys cysVar2 = this.k;
        auv.f10895a.d(cysVar2.getClass()).i(cysVar2, cysVar);
    }

    public final void m(byte[] bArr, int i, le leVar) {
        if (this.i) {
            p();
            this.i = false;
        }
        try {
            ciw d2 = auv.f10895a.d(this.k.getClass());
            cys cysVar = this.k;
            fks fksVar = new fks();
            leVar.getClass();
            d2.g(cysVar, bArr, 0, i, fksVar);
        } catch (drq e2) {
            throw e2;
        } catch (IOException e3) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e3);
        } catch (IndexOutOfBoundsException unused) {
            throw drq.d();
        }
    }

    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public final crf clone() {
        crf crfVar = (crf) this.j.a(5);
        crfVar.l(q());
        return crfVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0026, code lost:
    
        if (r1 != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final cys o() {
        cys q = q();
        byte byteValue = ((Byte) q.a(1)).byteValue();
        if (byteValue != 1) {
            if (byteValue != 0) {
                boolean h = auv.f10895a.d(q.getClass()).h(q);
                q.a(2);
            }
            throw new dwb("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        }
        return q;
    }

    public final void p() {
        cys cysVar = (cys) this.k.a(4);
        auv.f10895a.d(cysVar.getClass()).i(cysVar, this.k);
        this.k = cysVar;
    }

    public final cys q() {
        if (this.i) {
            return this.k;
        }
        cys cysVar = this.k;
        auv.f10895a.d(cysVar.getClass()).f(cysVar);
        this.i = true;
        return this.k;
    }
}
