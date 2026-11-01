package g;

import android.text.TextUtils;
import android.view.MotionEvent;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Map;

/* loaded from: classes.dex */
public final class pv extends bgh {

    /* renamed from: a, reason: collision with root package name */
    public String f19831a;

    /* renamed from: b, reason: collision with root package name */
    public float f19832b;

    /* renamed from: c, reason: collision with root package name */
    public float f19833c;

    /* renamed from: e, reason: collision with root package name */
    public int f19834e;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.bgh
    public final boolean dq(Object... objArr) {
        char c2;
        eyj eyjVar;
        if (objArr.length > 0) {
            Map<String, String> map = this.s;
            if (map != null) {
                this.f19831a = TextUtils.isEmpty(map.get("direction")) ? "all" : this.s.get("direction");
                this.f19834e = byh.o(this.s.get("distance"), 0);
            }
            MotionEvent motionEvent = (MotionEvent) objArr[0];
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f19832b = motionEvent.getX();
                this.f19833c = motionEvent.getY();
                return true;
            }
            if (action == 1 || action == 3) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (this.f19834e == 0 && (eyjVar = this.dq) != null) {
                    ((gsa) eyjVar).e(this.iw, this.ox.f13427b);
                    return true;
                }
                int e2 = dxo.e(this.ia, x - this.f19832b);
                int e3 = dxo.e(this.ia, y - this.f19833c);
                String str = this.f19831a;
                switch (str.hashCode()) {
                    case 3739:
                        if (str.equals("up")) {
                            c2 = 0;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 96673:
                        if (str.equals("all")) {
                            c2 = 4;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 3089570:
                        if (str.equals("down")) {
                            c2 = 1;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 3317767:
                        if (str.equals("left")) {
                            c2 = 2;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 108511772:
                        if (str.equals("right")) {
                            c2 = 3;
                            break;
                        }
                        c2 = 65535;
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
                if (c2 == 0) {
                    e2 = -e3;
                } else if (c2 == 1) {
                    e2 = e3;
                } else if (c2 == 2) {
                    e2 = -e2;
                } else if (c2 != 3) {
                    e2 = (int) Math.abs(Math.sqrt(Math.pow(e3, 2.0d) + Math.pow(e2, 2.0d)));
                }
                if (e2 >= this.f19834e) {
                    eyj eyjVar2 = this.dq;
                    if (eyjVar2 != null) {
                        this.f19832b = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        this.f19833c = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        ((gsa) eyjVar2).e(this.iw, this.ox.f13427b);
                    }
                }
            }
            return true;
        }
        return false;
    }
}
