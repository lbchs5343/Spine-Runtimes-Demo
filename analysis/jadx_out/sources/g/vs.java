package g;

import java.io.OutputStream;

/* loaded from: classes.dex */
public final class vs extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ eos f20190a;

    public vs(eos eosVar) {
        this.f20190a = eosVar;
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        char c2 = (char) i;
        eos eosVar = this.f20190a;
        if (c2 == '\n') {
            ((grs) eosVar).ag();
        } else if (c2 != '\r') {
            eosVar.a(c2);
        }
    }
}
