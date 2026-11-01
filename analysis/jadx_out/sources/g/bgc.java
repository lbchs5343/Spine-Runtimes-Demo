package g;

import java.util.BitSet;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class bgc implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11500a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BitSet f11501b;

    public /* synthetic */ bgc(BitSet bitSet, int i) {
        this.f11500a = i;
        this.f11501b = bitSet;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f11500a) {
            case 0:
                this.f11501b.set(((gcv) obj).f17902c.x);
                break;
            case 1:
                BitSet bitSet = ((fza) obj).i;
                if (!bitSet.isEmpty()) {
                    this.f11501b.or(bitSet);
                    break;
                }
                break;
            case 2:
                this.f11501b.and(((fza) obj).f17687g);
                break;
            default:
                fza fzaVar = ((fza) obj).f17683ab;
                if (fzaVar != null) {
                    BitSet bitSet2 = fzaVar.f17687g;
                    BitSet bitSet3 = this.f11501b;
                    bitSet3.andNot(bitSet2);
                    bitSet3.clear(fzaVar.x);
                    break;
                }
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f11500a;
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}
