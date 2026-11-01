package g;

import java.util.Map;

/* loaded from: classes3.dex */
public final /* synthetic */ class ehz implements xx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15571a;

    public /* synthetic */ ehz(int i) {
        this.f15571a = i;
    }

    @Override // g.box
    public final void b(Object obj, Object obj2) {
        switch (this.f15571a) {
            case 0:
                throw new fgn("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
            case 1:
                Map.Entry entry = (Map.Entry) obj;
                dmp dmpVar = (dmp) obj2;
                dmpVar.i(dtc.f14757d, entry.getKey());
                dmpVar.i(dtc.f14754a, entry.getValue());
                return;
            default:
                throw new fgn("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }
    }
}
