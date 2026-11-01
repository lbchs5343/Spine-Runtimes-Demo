package g;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationAdSlot;
import g.fxe;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: classes3.dex */
public class eku implements eo {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f15710a;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f15714e;

    /* renamed from: g, reason: collision with root package name */
    public TTNativeExpressAd f15716g;
    public LinearLayout h;
    public final dms i;
    public TTFullScreenVideoAd j;
    public final Context l;
    public TTAdNative m;
    public String n;

    /* renamed from: c, reason: collision with root package name */
    public static final ConcurrentLinkedQueue f15712c = new ConcurrentLinkedQueue();

    /* renamed from: d, reason: collision with root package name */
    public static long f15713d = 0;

    /* renamed from: b, reason: collision with root package name */
    public static final long f15711b = 180000;

    /* renamed from: f, reason: collision with root package name */
    public boolean f15715f = false;
    public final Handler k = new Handler();

    public eku(dms dmsVar) {
        this.i = dmsVar;
        this.l = dmsVar.getApplicationContext();
    }

    public static boolean o(Context context, String str) {
        if (atf.g(context).i() && !f15714e) {
            f15714e = true;
            try {
                TTAdSdk.init(context, new TTAdConfig.Builder().appId(str).useMediation(true).allowShowNotify(true).supportMultiProcess(true).customController(!fnp.m() ? new fna(context, 0) : new fna(context, 1)).build());
                TTAdSdk.start(new exe());
                return true;
            } catch (Exception e2) {
                e2.toString();
                erl.ac(e2);
                f15714e = false;
            }
        }
        return false;
    }

    public final void p() {
        TTFullScreenVideoAd tTFullScreenVideoAd = this.j;
        if (tTFullScreenVideoAd != null) {
            if (tTFullScreenVideoAd.getMediationManager() != null) {
                this.j.getMediationManager().destroy();
            }
            this.j = null;
        }
        dms dmsVar = this.i;
        if (dmsVar != null) {
            Iterator it = f15712c.iterator();
            while (it != null && it.hasNext()) {
                fiy fiyVar = (fiy) it.next();
                if (fiyVar != null) {
                    WeakReference weakReference = fiyVar.f16869a;
                    if (weakReference.get() != null && weakReference.get() == dmsVar) {
                        it.remove();
                    }
                }
            }
        }
    }

    public final boolean q(ViewGroup viewGroup, String str, String str2, boolean z) {
        int i;
        if (viewGroup == null) {
            return false;
        }
        Context context = this.l;
        if (!atf.g(context).i()) {
            viewGroup.setVisibility(8);
            return false;
        }
        o(context, str);
        if (!z) {
            viewGroup.setVisibility(0);
        }
        TextView textView = (TextView) viewGroup.findViewById(R.id.atip);
        if (textView != null) {
            fxe.e m = atf.g(context).m();
            String str3 = m == null ? null : m.googleAdTips;
            textView.setVisibility(TextUtils.isEmpty(str3) ? 8 : 0);
            textView.setText(str3);
        }
        float width = viewGroup.getWidth();
        dms dmsVar = this.i;
        if (!z && (width <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || !f15710a)) {
            if (f15710a) {
                this.k.postDelayed(new dxh(this, viewGroup, str, str2, 1), 1000L);
                return false;
            }
            f15712c.offer(new fiy(dmsVar, new dxh(this, viewGroup, str, str2, 0)));
            return false;
        }
        Display defaultDisplay = dmsVar.getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        float width2 = viewGroup.getWidth();
        if (width2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || width2 > displayMetrics.widthPixels) {
            width2 = displayMetrics.widthPixels;
        }
        int i2 = (int) width2;
        int[] ag = fso.ag(context);
        int i3 = ag[0];
        int i4 = ag[1];
        if (i4 > 0 && i3 > i4 && i2 >= (i = ((i4 / 8) * TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX) / 50)) {
            i2 = i;
        }
        AdSlot build = new AdSlot.Builder().setCodeId(str2).setImageAcceptedSize(i2, (i2 * 50) / TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX).build();
        if (this.m == null) {
            this.m = TTAdSdk.getAdManager().createAdNative(this.i);
        }
        this.m.loadBannerExpressAd(build, new gqf(this, viewGroup));
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001f, code lost:
    
        if ((java.lang.System.currentTimeMillis() - g.eku.f15713d) <= g.eku.f15711b) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean r(String str, String str2) {
        Context context = this.l;
        int i = 0;
        if (atf.g(context).i()) {
            if (this.f15715f) {
                SimpleDateFormat simpleDateFormat = dlb.f14354a;
            }
            this.f15715f = true;
            o(context, str);
            this.n = str2;
            boolean z = f15710a;
            dms dmsVar = this.i;
            if (!z) {
                this.f15715f = false;
                f15712c.offer(new fiy(dmsVar, new gdv(this, str, str2, i)));
                return false;
            }
            AdSlot build = new AdSlot.Builder().setCodeId(str2).setOrientation(fso.ar(dmsVar) ? 1 : 2).setMediationAdSlot(new MediationAdSlot.Builder().setMuted(true).setVolume(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT).setBidNotify(true).build()).setAdLoadType(TTAdLoadType.PRELOAD).build();
            if (this.m == null) {
                this.m = TTAdSdk.getAdManager().createAdNative(dmsVar);
            }
            this.m.loadFullScreenVideoAd(build, new za(this, str2));
            return true;
        }
        return false;
    }
}
