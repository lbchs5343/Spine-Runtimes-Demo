package g;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import java.text.SimpleDateFormat;

/* loaded from: classes3.dex */
public abstract class cms extends dms {
    private eo ad;

    static {
        fyt.f17669b = new bfb(2);
    }

    public boolean bannerAdHide() {
        ViewGroup viewGroup;
        eo eoVar = this.ad;
        if (eoVar == null || (viewGroup = (ViewGroup) ((eku) eoVar).i.findViewById(R.id.alayout)) == null) {
            return false;
        }
        viewGroup.setVisibility(8);
        return true;
    }

    public boolean bannerAdInit(String str, String str2) {
        eo eoVar = this.ad;
        if (eoVar == null) {
            return false;
        }
        eku ekuVar = (eku) eoVar;
        return ekuVar.q((ViewGroup) ekuVar.i.findViewById(R.id.alayout), str, str2, false);
    }

    public boolean bannerAdShow() {
        eo eoVar = this.ad;
        if (eoVar == null) {
            return false;
        }
        eku ekuVar = (eku) eoVar;
        ViewGroup viewGroup = (ViewGroup) ekuVar.i.findViewById(R.id.alayout);
        if (viewGroup == null) {
            return false;
        }
        viewGroup.setVisibility(atf.g(ekuVar.l).i() ? 0 : 8);
        return true;
    }

    public void fullScreenAdInit(String str, String str2) {
        eo eoVar = this.ad;
        if (eoVar != null) {
            ((eku) eoVar).r(str, str2);
        }
    }

    public void fullScreenAdShow() {
        eo eoVar = this.ad;
        if (eoVar != null) {
            eku ekuVar = (eku) eoVar;
            TTFullScreenVideoAd tTFullScreenVideoAd = ekuVar.j;
            if (tTFullScreenVideoAd != null) {
                SimpleDateFormat simpleDateFormat = dlb.f14354a;
                if (System.currentTimeMillis() - eku.f15713d <= eku.f15711b) {
                    return;
                }
                ekuVar.j.showFullScreenVideoAd(ekuVar.i);
                return;
            }
            if (tTFullScreenVideoAd != null) {
                if (tTFullScreenVideoAd.getMediationManager() != null) {
                    ekuVar.j.getMediationManager().destroy();
                }
                ekuVar.j = null;
            }
            if (TextUtils.isEmpty(ekuVar.n)) {
                return;
            }
            ekuVar.r(null, ekuVar.n);
        }
    }

    @Override // g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            boolean z = eku.f15714e;
            this.ad = (eo) eku.class.getConstructor(dms.class).newInstance(this);
        } catch (Exception e2) {
            if (byh.bc()) {
                gm.d(this, "ads is null", 0);
            } else {
                erl.ai("ads is null", e2);
            }
        }
    }

    @Override // g.dms, g.ub, androidx.fragment.app.u, android.app.Activity
    public void onDestroy() {
        eo eoVar = this.ad;
        if (eoVar != null) {
            ((eku) eoVar).p();
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public void onPause() {
        eo eoVar = this.ad;
        if (eoVar != null) {
            eoVar.getClass();
        }
        super.onPause();
    }

    @Override // g.dms, androidx.fragment.app.u, android.app.Activity
    public void onResume() {
        try {
            super.onResume();
        } catch (IllegalArgumentException e2) {
            erl.ac(e2);
        }
        eo eoVar = this.ad;
        if (eoVar != null) {
            eoVar.getClass();
        }
    }
}
