package g;

/* loaded from: classes3.dex */
public final class pi extends Throwable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19816a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ pi(String str, int i) {
        super(str);
        this.f19816a = i;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        int i = this.f19816a;
        return this;
    }
}
