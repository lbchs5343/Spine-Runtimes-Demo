package g;

import android.os.Build;

/* loaded from: classes.dex */
public class fpc extends fnk {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17185a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ fpc(String str, String str2, int i) {
        super(str, str2);
        this.f17185a = i;
    }

    @Override // g.fnk
    public final boolean b() {
        switch (this.f17185a) {
            case 0:
                if (Build.VERSION.SDK_INT >= 23) {
                }
                break;
            case 1:
                if (Build.VERSION.SDK_INT >= 24) {
                }
                break;
            case 2:
                break;
            case 3:
                if (Build.VERSION.SDK_INT >= 26) {
                }
                break;
            case 4:
                if (Build.VERSION.SDK_INT >= 27) {
                }
                break;
            case 5:
                if (Build.VERSION.SDK_INT >= 28) {
                }
                break;
            default:
                if (Build.VERSION.SDK_INT >= 29) {
                }
                break;
        }
        return false;
    }
}
