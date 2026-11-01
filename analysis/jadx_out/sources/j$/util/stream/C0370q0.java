package j$.util.stream;

import java.util.function.Predicate;

/* renamed from: j$.util.stream.q0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0370q0 extends AbstractC0389u0 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EnumC0394v0 f21091c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Predicate f21092d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0370q0(EnumC0394v0 enumC0394v0, Predicate predicate) {
        super(enumC0394v0);
        this.f21091c = enumC0394v0;
        this.f21092d = predicate;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        if (this.f21108a) {
            return;
        }
        boolean test = this.f21092d.test(obj);
        EnumC0394v0 enumC0394v0 = this.f21091c;
        if (test == enumC0394v0.f21111a) {
            this.f21108a = true;
            this.f21109b = enumC0394v0.f21112b;
        }
    }
}
