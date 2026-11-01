package g;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class fyc extends fyg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17627a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f17628b;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f17629d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ fyc(int i, Object obj, Object obj2, String str) {
        super(str, true);
        this.f17627a = i;
        this.f17628b = obj;
        this.f17629d = obj2;
    }

    @Override // g.fyg
    public final long c() {
        long c2;
        int i;
        btb[] btbVarArr;
        switch (this.f17627a) {
            case 0:
                ug ugVar = (ug) this.f17628b;
                ugVar.r.c(ugVar, (che) ((aye) this.f17629d).element);
                return -1L;
            case 1:
                try {
                    ((ug) this.f17628b).r.a((btb) this.f17629d);
                } catch (IOException e2) {
                    bop bopVar = bop.h;
                    bop bopVar2 = bop.h;
                    String str = "Http2Connection.Listener failure for " + ((ug) this.f17628b).j;
                    bopVar2.getClass();
                    bop.j(4, str, e2);
                    try {
                        ((btb) this.f17629d).x(amc.PROTOCOL_ERROR, e2);
                    } catch (IOException unused) {
                    }
                }
                return -1L;
            default:
                dvj dvjVar = (dvj) this.f17628b;
                che cheVar = (che) this.f17629d;
                aye ayeVar = new aye();
                ug ugVar2 = dvjVar.f14891b;
                synchronized (ugVar2.w) {
                    synchronized (ugVar2) {
                        try {
                            che cheVar2 = ugVar2.x;
                            che cheVar3 = new che();
                            cheVar3.d(cheVar2);
                            cheVar3.d(cheVar);
                            ayeVar.element = cheVar3;
                            c2 = cheVar3.c() - cheVar2.c();
                            i = 0;
                            if (c2 != 0 && !ugVar2.u.isEmpty()) {
                                btbVarArr = (btb[]) ugVar2.u.values().toArray(new btb[0]);
                                che cheVar4 = (che) ayeVar.element;
                                bff.p(cheVar4, "<set-?>");
                                ugVar2.x = cheVar4;
                                ugVar2.i.l(new fyc(i, ugVar2, ayeVar, ugVar2.j + " onSettings"), 0L);
                            }
                            btbVarArr = null;
                            che cheVar42 = (che) ayeVar.element;
                            bff.p(cheVar42, "<set-?>");
                            ugVar2.x = cheVar42;
                            ugVar2.i.l(new fyc(i, ugVar2, ayeVar, ugVar2.j + " onSettings"), 0L);
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    try {
                        ugVar2.w.k((che) ayeVar.element);
                    } catch (IOException e3) {
                        ugVar2.ah(e3);
                    }
                }
                if (btbVarArr != null) {
                    int length = btbVarArr.length;
                    while (i < length) {
                        btb btbVar = btbVarArr[i];
                        synchronized (btbVar) {
                            btbVar.h += c2;
                            if (c2 > 0) {
                                btbVar.notifyAll();
                            }
                        }
                        i++;
                    }
                }
                return -1L;
        }
    }
}
