package g;

/* loaded from: classes3.dex */
public final class aay implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zs f9886a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f9887b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ afh f9888c;

    public /* synthetic */ aay(zs zsVar, afh afhVar, int i) {
        this.f9887b = i;
        this.f9886a = zsVar;
        this.f9888c = afhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9887b) {
            case 0:
                bsz bszVar = this.f9886a.f20414b;
                bszVar.ay();
                bszVar.aw(this.f9888c);
                break;
            case 1:
                bsz bszVar2 = this.f9886a.f20414b;
                bszVar2.ay();
                bszVar2.zzaz()._e();
                bszVar2.bi();
                afh afhVar = this.f9888c;
                ckd.bf(afhVar.zza);
                bszVar2.bp(afhVar);
                break;
            case 2:
                bsz bszVar3 = this.f9886a.f20414b;
                bszVar3.ay();
                bszVar3.zzaz()._e();
                bszVar3.bi();
                afh afhVar2 = this.f9888c;
                ckd.bf(afhVar2.zza);
                rs d2 = rs.d(afhVar2.zzv);
                rs as = bszVar3.as(afhVar2.zza);
                bszVar3.zzay().f11519c.e(afhVar2.zza, "Setting consent, package, consent", d2);
                bszVar3.at(afhVar2.zza, d2);
                if (d2.i(as, (gxx[]) d2.f19922b.keySet().toArray(new gxx[0]))) {
                    bszVar3.aw(afhVar2);
                    break;
                }
                break;
            default:
                bsz bszVar4 = this.f9886a.f20414b;
                bszVar4.ay();
                bszVar4.bh(this.f9888c);
                break;
        }
    }
}
