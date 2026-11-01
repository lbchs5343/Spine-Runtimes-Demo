package j$.util.stream;

import java.util.HashSet;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* renamed from: j$.util.stream.n, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0354n extends AbstractC0342k2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21077b;

    /* renamed from: c, reason: collision with root package name */
    public Object f21078c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0354n(AbstractC0289a abstractC0289a, InterfaceC0362o2 interfaceC0362o2, int i) {
        super(interfaceC0362o2);
        this.f21077b = i;
        this.f21078c = abstractC0289a;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0354n(InterfaceC0362o2 interfaceC0362o2) {
        super(interfaceC0362o2);
        this.f21077b = 0;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f21077b) {
            case 0:
                if (!((Set) this.f21078c).contains(obj)) {
                    ((Set) this.f21078c).add(obj);
                    this.f21057a.accept((InterfaceC0362o2) obj);
                    break;
                }
                break;
            case 1:
                ((Consumer) ((C0378s) this.f21078c).t).accept(obj);
                this.f21057a.accept((InterfaceC0362o2) obj);
                break;
            case 2:
                if (((Predicate) ((C0378s) this.f21078c).t).test(obj)) {
                    this.f21057a.accept((InterfaceC0362o2) obj);
                    break;
                }
                break;
            case 3:
                this.f21057a.accept((InterfaceC0362o2) ((C0302c2) this.f21078c).t.apply(obj));
                break;
            case 4:
                this.f21057a.accept(((ToIntFunction) ((W) this.f21078c).t).applyAsInt(obj));
                break;
            case 5:
                this.f21057a.accept(((ToLongFunction) ((C0330i0) this.f21078c).t).applyAsLong(obj));
                break;
            default:
                this.f21057a.accept(((ToDoubleFunction) ((C0403x) this.f21078c).t).applyAsDouble(obj));
                break;
        }
    }

    @Override // j$.util.stream.AbstractC0342k2, j$.util.stream.InterfaceC0362o2
    public void c(long j) {
        switch (this.f21077b) {
            case 0:
                this.f21078c = new HashSet();
                this.f21057a.c(-1L);
                break;
            case 1:
            default:
                super.c(j);
                break;
            case 2:
                this.f21057a.c(-1L);
                break;
        }
    }

    @Override // j$.util.stream.AbstractC0342k2, j$.util.stream.InterfaceC0362o2
    public void end() {
        switch (this.f21077b) {
            case 0:
                this.f21078c = null;
                this.f21057a.end();
                break;
            default:
                super.end();
                break;
        }
    }
}
