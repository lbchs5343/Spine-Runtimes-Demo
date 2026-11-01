package g;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class gwl extends bwp implements Iterator {
    public final /* synthetic */ int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ gwl(fzq fzqVar, int i) {
        super(fzqVar);
        this.k = i;
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.k) {
            case 0:
                g();
                int i = this.f12332c;
                fzq fzqVar = (fzq) this.f12331b;
                if (i >= fzqVar.length) {
                    throw new NoSuchElementException();
                }
                int i2 = this.f12332c;
                this.f12332c = i2 + 1;
                this.f12333d = i2;
                gor gorVar = new gor(fzqVar, i2);
                e();
                return gorVar;
            case 1:
                g();
                int i3 = this.f12332c;
                fzq fzqVar2 = (fzq) this.f12331b;
                if (i3 >= fzqVar2.length) {
                    throw new NoSuchElementException();
                }
                int i4 = this.f12332c;
                this.f12332c = i4 + 1;
                this.f12333d = i4;
                Object obj = fzqVar2.keysArray[this.f12333d];
                e();
                return obj;
            default:
                g();
                int i5 = this.f12332c;
                fzq fzqVar3 = (fzq) this.f12331b;
                if (i5 >= fzqVar3.length) {
                    throw new NoSuchElementException();
                }
                int i6 = this.f12332c;
                this.f12332c = i6 + 1;
                this.f12333d = i6;
                Object[] objArr = fzqVar3.valuesArray;
                bff.d(objArr);
                Object obj2 = objArr[this.f12333d];
                e();
                return obj2;
        }
    }
}
