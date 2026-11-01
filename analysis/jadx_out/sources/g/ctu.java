package g;

/* loaded from: classes.dex */
public final /* synthetic */ class ctu implements bto {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13494a;

    public /* synthetic */ ctu(int i) {
        this.f13494a = i;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        eyx eyxVar;
        switch (this.f13494a) {
            case 0:
                String str = (String) obj;
                erz erzVar = (erz) obj2;
                bff.p(str, "acc");
                bff.p(erzVar, "element");
                if (str.length() == 0) {
                    return erzVar.toString();
                }
                return str + ", " + erzVar;
            default:
                boj bojVar = (boj) obj;
                erz erzVar2 = (erz) obj2;
                bff.p(bojVar, "acc");
                bff.p(erzVar2, "element");
                boj _w = bojVar._w(erzVar2.getKey());
                cgq cgqVar = cgq.f12850a;
                if (_w == cgqVar) {
                    return erzVar2;
                }
                bmr bmrVar = bmr.j;
                dic dicVar = (dic) _w._x(bmrVar);
                if (dicVar == null) {
                    eyxVar = new eyx(_w, erzVar2);
                } else {
                    boj _w2 = _w._w(bmrVar);
                    if (_w2 == cgqVar) {
                        return new eyx(erzVar2, dicVar);
                    }
                    eyxVar = new eyx(new eyx(_w2, erzVar2), dicVar);
                }
                return eyxVar;
        }
    }
}
