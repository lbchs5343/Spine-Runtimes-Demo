package g;

import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class lw implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f19617a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zs f19618b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f19619c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f19620d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f19621e;

    public /* synthetic */ lw(zs zsVar, String str, String str2, String str3, int i) {
        this.f19619c = i;
        this.f19618b = zsVar;
        this.f19620d = str;
        this.f19621e = str2;
        this.f19617a = str3;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f19619c) {
            case 0:
                bsz bszVar = this.f19618b.f20414b;
                bszVar.ay();
                ggz ggzVar = bszVar.l;
                bsz.ag(ggzVar);
                return ggzVar.bb(this.f19620d, this.f19621e, this.f19617a);
            case 1:
                bsz bszVar2 = this.f19618b.f20414b;
                bszVar2.ay();
                ggz ggzVar2 = bszVar2.l;
                bsz.ag(ggzVar2);
                return ggzVar2.bb(this.f19620d, this.f19621e, this.f19617a);
            case 2:
                bsz bszVar3 = this.f19618b.f20414b;
                bszVar3.ay();
                ggz ggzVar3 = bszVar3.l;
                bsz.ag(ggzVar3);
                return ggzVar3.x(this.f19620d, this.f19621e, this.f19617a);
            default:
                bsz bszVar4 = this.f19618b.f20414b;
                bszVar4.ay();
                ggz ggzVar4 = bszVar4.l;
                bsz.ag(ggzVar4);
                return ggzVar4.x(this.f19620d, this.f19621e, this.f19617a);
        }
    }
}
