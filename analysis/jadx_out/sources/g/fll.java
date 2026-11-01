package g;

/* loaded from: classes.dex */
public final class fll implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16986a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ cfi f16987b;

    public /* synthetic */ fll(cfi cfiVar, int i) {
        this.f16986a = i;
        this.f16987b = cfiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f16986a) {
            case 0:
                bgv bgvVar = this.f16987b.x;
                if (bgvVar != null) {
                    bgvVar.setListSelectionHidden(true);
                    bgvVar.requestLayout();
                    break;
                }
                break;
            default:
                cfi cfiVar = this.f16987b;
                bgv bgvVar2 = cfiVar.x;
                if (bgvVar2 != null && bgvVar2.isAttachedToWindow() && cfiVar.x.getCount() > cfiVar.x.getChildCount() && cfiVar.x.getChildCount() <= cfiVar.an) {
                    cfiVar.ag.setInputMethodMode(2);
                    cfiVar.show();
                    break;
                }
                break;
        }
    }
}
