package g;

/* loaded from: classes.dex */
public final class djr extends fpc {
    @Override // g.fnk
    public final boolean c() {
        if (!super.c() || !bff.u("MULTI_PROCESS")) {
            return false;
        }
        int i = bdj.f11318a;
        if (gvy.f18852e.c()) {
            return fea.f16641a.getStatics().isMultiProcessEnabled();
        }
        throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
    }
}
