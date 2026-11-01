package g;

import android.os.Handler;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Checkable;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.internal.ads.zzavc;
import java.util.LinkedHashSet;
import java.util.List;

/* loaded from: classes.dex */
public final class bcr implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11295a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f11296b;

    public /* synthetic */ bcr(int i, Object obj) {
        this.f11295a = i;
        this.f11296b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        ui uiVar;
        int i = this.f11295a;
        Object obj = this.f11296b;
        switch (i) {
            case 0:
                epi epiVar = (epi) obj;
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    epiVar.f15937d = motionEvent.getRawX();
                    epiVar.f15935b = motionEvent.getRawY();
                    String.format("%.2f", Float.valueOf(motionEvent.getRawX()));
                    String.format("%.2f", Float.valueOf(motionEvent.getRawY()));
                } else if (actionMasked == 2) {
                    float rawX = motionEvent.getRawX();
                    float rawY = motionEvent.getRawY();
                    float atan2 = (float) Math.atan2(((view.getHeight() / 2) + epiVar.p.y) - rawY, ((view.getWidth() / 2) + epiVar.p.x) - rawX);
                    float f2 = epiVar.f15937d;
                    float f3 = epiVar.f15935b;
                    epi.q(rawX, rawY);
                    epiVar.f15938e.clearFocus();
                    WindowManager.LayoutParams layoutParams = epiVar.l;
                    epi.q(layoutParams.x, layoutParams.y);
                    WindowManager.LayoutParams layoutParams2 = epiVar.l;
                    layoutParams2.x = (int) ((rawX - f2) + layoutParams2.x);
                    layoutParams2.y = (int) ((rawY - f3) + layoutParams2.y);
                    epiVar.m.updateViewLayout(epiVar.f15936c, layoutParams2);
                    WindowManager.LayoutParams layoutParams3 = epiVar.l;
                    epi.q(layoutParams3.x, layoutParams3.y);
                    WindowManager.LayoutParams layoutParams4 = epiVar.p;
                    epi.q(layoutParams4.x, layoutParams4.y);
                    WindowManager.LayoutParams layoutParams5 = epiVar.p;
                    double d2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    double d3 = atan2;
                    layoutParams5.x = (int) (((Math.cos(d3) * d2) + rawX) - (epiVar.j.getWidth() / 2.0f));
                    epiVar.p.y = (int) ((((Math.sin(d3) * d2) + rawY) - (epiVar.j.getHeight() / 2.0f)) - 240.0d);
                    WindowManager.LayoutParams layoutParams6 = epiVar.p;
                    epi.q(layoutParams6.x, layoutParams6.y);
                    epiVar.m.updateViewLayout(epiVar.j, epiVar.p);
                    epiVar.f15937d = rawX;
                    epiVar.f15935b = rawY;
                }
                return true;
            case 1:
                baq baqVar = (baq) obj;
                if (motionEvent.getActionMasked() == 0 && cro.ba(baqVar.bc, baqVar.u)) {
                    List<he> contains = he.contains(baqVar.p.getNodeInfo(), (int) motionEvent.getRawX(), (int) motionEvent.getRawY());
                    baqVar.m = contains;
                    if (!acw.u(contains)) {
                        if (acw.bo(baqVar.m) > 1) {
                            baqVar.ap(baqVar.m);
                            return true;
                        }
                        baqVar.ao((he) baqVar.m.get(0), false);
                        return true;
                    }
                }
                return false;
            case 2:
                cfi cfiVar = (cfi) obj;
                fll fllVar = cfiVar.ae;
                Handler handler = cfiVar.u;
                int action = motionEvent.getAction();
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (action == 0 && (uiVar = cfiVar.ag) != null && uiVar.isShowing() && x >= 0 && x < cfiVar.ag.getWidth() && y >= 0 && y < cfiVar.ag.getHeight()) {
                    handler.postDelayed(fllVar, 250L);
                } else if (action == 1) {
                    handler.removeCallbacks(fllVar);
                }
                return false;
            case 3:
                edx edxVar = (edx) obj;
                if (motionEvent.getActionMasked() == 0 && cro.ba(edxVar.bc, edxVar.x)) {
                    List<he> contains2 = he.contains(edxVar.p.getNodeInfo(), (int) motionEvent.getRawX(), (int) motionEvent.getRawY(), edxVar.o);
                    edxVar.y = contains2;
                    if (!acw.u(contains2)) {
                        he heVar = (he) edxVar.y.get(0);
                        if (heVar == null) {
                            edxVar.as();
                            return true;
                        }
                        if (edxVar.j.containsKey(heVar)) {
                            edxVar.j.remove(heVar);
                            heVar.setInspected(false);
                        } else {
                            heVar.setInspected(true);
                            LinkedHashSet linkedHashSet = new LinkedHashSet();
                            acw.ax(linkedHashSet, heVar.getText());
                            acw.ax(linkedHashSet, heVar.getContentDescription());
                            acw.ax(linkedHashSet, heVar.getPaneTitle());
                            acw.ax(linkedHashSet, heVar.getHintText());
                            if (linkedHashSet.isEmpty()) {
                                return true;
                            }
                            edxVar.j.put(heVar, linkedHashSet);
                        }
                        if (!acw.ae(edxVar.bc, "tc_tips_long_click_copy")) {
                            gm.f(edxVar.bc, R.string.li_cd_long_click_copy);
                        }
                        edxVar.ao();
                        edxVar.p.invalidate();
                        return true;
                    }
                }
                return false;
            case 4:
                if (((Checkable) view).isChecked()) {
                    return ((GestureDetector) obj).onTouchEvent(motionEvent);
                }
                return false;
            default:
                zzavc zzavcVar = ((gbf) obj).f17853a;
                if (zzavcVar != null) {
                    zzavcVar.zzd(motionEvent);
                }
                return false;
        }
    }
}
