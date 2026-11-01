package g;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public final class eoe extends ewk {

    /* renamed from: a, reason: collision with root package name */
    public int f15890a;

    public eoe(eyh eyhVar) {
        super(eyhVar);
        this.f15890a = -1;
    }

    @Override // g.ewk
    public final ViewGroup.LayoutParams dq() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) this.dq, (int) this.f16278d);
        layoutParams.leftMargin = (int) this.iw;
        layoutParams.rightMargin = (int) this.mn;
        layoutParams.topMargin = (int) this.ia;
        layoutParams.bottomMargin = (int) this.kk;
        layoutParams.gravity = this.f15890a;
        return layoutParams;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // g.ewk
    public final void dq(Context context, String str, String str2) {
        String[] split;
        char c2;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.dq(context, str, str2);
        if (TextUtils.equals(str, "layoutGravity")) {
            int i = -1;
            if (!TextUtils.isEmpty(str2) && (split = str2.split("\\|")) != null && split.length > 0) {
                int i2 = 0;
                for (String str3 : split) {
                    str3.getClass();
                    int i3 = 5;
                    switch (str3.hashCode()) {
                        case -1383228885:
                            if (str3.equals("bottom")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case -1364013995:
                            if (str3.equals("center")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case -348726240:
                            if (str3.equals("center_vertical")) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case 115029:
                            if (str3.equals("top")) {
                                c2 = 3;
                                break;
                            }
                            break;
                        case 3317767:
                            if (str3.equals("left")) {
                                c2 = 4;
                                break;
                            }
                            break;
                        case 108511772:
                            if (str3.equals("right")) {
                                c2 = 5;
                                break;
                            }
                            break;
                        case 1063616078:
                            if (str3.equals("center_horizontal")) {
                                c2 = 6;
                                break;
                            }
                            break;
                    }
                    c2 = 65535;
                    switch (c2) {
                        case 0:
                            i3 = 80;
                            break;
                        case 1:
                            i3 = 17;
                            break;
                        case 2:
                            i3 = 16;
                            break;
                        case 3:
                            i3 = 48;
                            break;
                        case 4:
                            i3 = 3;
                            break;
                        case 5:
                            break;
                        case 6:
                            i3 = 1;
                            break;
                        default:
                            i3 = -1;
                            break;
                    }
                    i2 |= i3;
                }
                i = i2;
            }
            this.f15890a = i;
        }
    }
}
