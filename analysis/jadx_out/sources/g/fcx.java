package g;

import android.view.View;

/* loaded from: classes.dex */
public final class fcx extends awt {
    public final /* synthetic */ int at;

    public /* synthetic */ fcx(int i) {
        this.at = i;
    }

    @Override // g.awt
    public final void aq(Object obj, float f2) {
        switch (this.at) {
            case 0:
                ((View) obj).setAlpha(f2);
                break;
            case 1:
                ((View) obj).setScaleX(f2);
                break;
            case 2:
                ((View) obj).setScaleY(f2);
                break;
            case 3:
                ((View) obj).setRotation(f2);
                break;
            case 4:
                ((View) obj).setRotationX(f2);
                break;
            default:
                ((View) obj).setRotationY(f2);
                break;
        }
    }

    @Override // g.awt
    public final float as(Object obj) {
        switch (this.at) {
            case 0:
                return ((View) obj).getAlpha();
            case 1:
                return ((View) obj).getScaleX();
            case 2:
                return ((View) obj).getScaleY();
            case 3:
                return ((View) obj).getRotation();
            case 4:
                return ((View) obj).getRotationX();
            default:
                return ((View) obj).getRotationY();
        }
    }
}
