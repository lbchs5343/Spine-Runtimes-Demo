package g;

import j$.util.Objects;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class edk implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15360a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f15361b;

    public /* synthetic */ edk(String str, int i) {
        this.f15360a = i;
        this.f15361b = str;
    }

    public final /* synthetic */ Function andThen(Function function) {
        int i = this.f15360a;
        return j$.util.function.k.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f15360a) {
            case 0:
                epk epkVar = (gsh) obj;
                if ((epkVar instanceof ehh) && Objects.equals(((ehh) epkVar).getName(), this.f15361b)) {
                    return epkVar;
                }
                return null;
            default:
                return awf.t("JADX ", this.f15361b, ": ", (String) obj);
        }
    }

    public final /* synthetic */ Function compose(Function function) {
        int i = this.f15360a;
        return j$.util.function.k.$default$compose(this, function);
    }
}
