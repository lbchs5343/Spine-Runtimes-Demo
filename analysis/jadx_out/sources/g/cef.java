package g;

import android.text.TextUtils;
import android.view.View;
import androidx.fragment.app.Fragment;
import cn.trinea.android.developertools.R;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import g.fxe;

/* loaded from: classes.dex */
public final class cef implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final Object f12729a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f12730b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f12731c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f12732d;

    public /* synthetic */ cef(int i, Object obj, Object obj2, boolean z) {
        this.f12731c = i;
        this.f12730b = obj;
        this.f12729a = obj2;
        this.f12732d = z;
    }

    public cef(androidx.fragment.app.a aVar, androidx.fragment.app.a aVar2, boolean z, tl tlVar) {
        this.f12731c = 0;
        this.f12729a = aVar;
        this.f12730b = aVar2;
        this.f12732d = z;
    }

    public cef(ajs ajsVar, dtn dtnVar) {
        this.f12731c = 2;
        bff.p(ajsVar, "registry");
        bff.p(dtnVar, "event");
        this.f12729a = ajsVar;
        this.f12730b = dtnVar;
    }

    public cef(elf elfVar, int i, boolean z, zd zdVar) {
        this.f12731c = 1;
        this.f12730b = elfVar;
        this.f12732d = z;
        this.f12729a = zdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        eie eieVar;
        boolean z;
        int i = this.f12731c;
        Object obj = this.f12730b;
        Object obj2 = this.f12729a;
        switch (i) {
            case 0:
                Fragment fragment = ((androidx.fragment.app.a) obj2).f176g;
                Fragment fragment2 = ((androidx.fragment.app.a) obj).f176g;
                boolean z2 = this.f12732d;
                aqe aqeVar = hbv.f19202a;
                if (!z2) {
                    fragment.getEnterTransitionCallback();
                    break;
                } else {
                    fragment2.getEnterTransitionCallback();
                    break;
                }
            case 1:
                elf elfVar = (elf) obj;
                if (!this.f12732d) {
                    elfVar.af();
                    break;
                } else {
                    fxe.a j = atf.g(elfVar.aa).j();
                    if (j != null && j.isShowFAQ && !TextUtils.isEmpty(j.faqUrl)) {
                        View findViewById = elfVar.findViewById(R.id.snackbar_layout);
                        afo.az(findViewById, findViewById.getResources().getText(R.string.retry_fail_to_author), -2, findViewById.getResources().getText(R.string.ok), (zd) obj2, false);
                        break;
                    }
                }
                break;
            case 2:
                if (!this.f12732d) {
                    ((ajs) obj2).k((dtn) obj);
                    this.f12732d = true;
                    break;
                }
                break;
            case 3:
                View view = (View) obj2;
                SwipeDismissBehavior swipeDismissBehavior = (SwipeDismissBehavior) obj;
                dfv dfvVar = swipeDismissBehavior.q;
                if (dfvVar != null && dfvVar.ae()) {
                    view.postOnAnimation(this);
                    break;
                } else if (this.f12732d && (eieVar = swipeDismissBehavior.s) != null) {
                    eieVar.y(view);
                    break;
                }
                break;
            default:
                UserInfoBean userInfoBean = (UserInfoBean) obj2;
                com.tencent.bugly.proguard.r rVar = (com.tencent.bugly.proguard.r) obj;
                z = rVar.f9787d;
                if (z) {
                    if (userInfoBean != null) {
                        try {
                            com.tencent.bugly.proguard.r.a(userInfoBean);
                            com.tencent.bugly.proguard.al.c("[UserInfo] Record user info.", new Object[0]);
                            rVar.a(userInfoBean, false);
                        } catch (Throwable th) {
                            if (com.tencent.bugly.proguard.al.a(th)) {
                                return;
                            }
                            th.printStackTrace();
                        }
                    }
                    if (this.f12732d) {
                        rVar.b();
                        break;
                    }
                }
                break;
        }
    }
}
