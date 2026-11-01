package j$.util.stream;

import j$.util.Spliterator;

/* loaded from: classes2.dex */
public final class E1 extends AbstractC0405x1 {
    public final /* synthetic */ int h;

    public /* synthetic */ E1(int i) {
        this.h = i;
    }

    @Override // j$.util.stream.AbstractC0405x1
    public final S1 D0() {
        switch (this.h) {
            case 0:
                return new W1();
            case 1:
                return new U1();
            case 2:
                return new X1();
            default:
                return new V1();
        }
    }

    @Override // j$.util.stream.AbstractC0405x1, j$.util.stream.G3
    public final Object f(AbstractC0289a abstractC0289a, Spliterator spliterator) {
        switch (this.h) {
            case 0:
                if (!EnumC0293a3.SIZED.l(abstractC0289a.m)) {
                    break;
                } else {
                    break;
                }
            case 1:
                if (!EnumC0293a3.SIZED.l(abstractC0289a.m)) {
                    break;
                } else {
                    break;
                }
            case 2:
                if (!EnumC0293a3.SIZED.l(abstractC0289a.m)) {
                    break;
                } else {
                    break;
                }
            default:
                if (!EnumC0293a3.SIZED.l(abstractC0289a.m)) {
                    break;
                } else {
                    break;
                }
        }
        return (Long) super.f(abstractC0289a, spliterator);
    }

    @Override // j$.util.stream.AbstractC0405x1, j$.util.stream.G3
    public final Object i(AbstractC0405x1 abstractC0405x1, Spliterator spliterator) {
        switch (this.h) {
            case 0:
                if (!EnumC0293a3.SIZED.l(((AbstractC0289a) abstractC0405x1).m)) {
                    break;
                } else {
                    break;
                }
            case 1:
                if (!EnumC0293a3.SIZED.l(((AbstractC0289a) abstractC0405x1).m)) {
                    break;
                } else {
                    break;
                }
            case 2:
                if (!EnumC0293a3.SIZED.l(((AbstractC0289a) abstractC0405x1).m)) {
                    break;
                } else {
                    break;
                }
            default:
                if (!EnumC0293a3.SIZED.l(((AbstractC0289a) abstractC0405x1).m)) {
                    break;
                } else {
                    break;
                }
        }
        return (Long) super.i(abstractC0405x1, spliterator);
    }

    @Override // j$.util.stream.AbstractC0405x1, j$.util.stream.G3
    public final int v() {
        switch (this.h) {
        }
        return EnumC0293a3.r;
    }
}
