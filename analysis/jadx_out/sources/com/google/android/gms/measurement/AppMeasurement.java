package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.analytics.FirebaseAnalytics;
import g.abn;
import g.ajg;
import g.apu;
import g.axz;
import g.bcy;
import g.ckd;
import g.cyg;
import g.dyd;
import g.frp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Deprecated
/* loaded from: classes3.dex */
public class AppMeasurement {

    /* renamed from: a, reason: collision with root package name */
    public static volatile AppMeasurement f8987a;

    /* renamed from: b, reason: collision with root package name */
    public final bcy f8988b;

    public static class ConditionalUserProperty {

        @Keep
        public boolean mActive;

        @Keep
        public String mAppId;

        @Keep
        public long mCreationTimestamp;

        @Keep
        public String mExpiredEventName;

        @Keep
        public Bundle mExpiredEventParams;

        @Keep
        public String mName;

        @Keep
        public String mOrigin;

        @Keep
        public long mTimeToLive;

        @Keep
        public String mTimedOutEventName;

        @Keep
        public Bundle mTimedOutEventParams;

        @Keep
        public String mTriggerEventName;

        @Keep
        public long mTriggerTimeout;

        @Keep
        public String mTriggeredEventName;

        @Keep
        public Bundle mTriggeredEventParams;

        @Keep
        public long mTriggeredTimestamp;

        @Keep
        public Object mValue;
    }

    public AppMeasurement(cyg cygVar) {
        this.f8988b = new axz(cygVar);
    }

    public AppMeasurement(frp frpVar) {
        this.f8988b = new ajg(frpVar);
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    @Keep
    @Deprecated
    public static AppMeasurement getInstance(Context context) {
        if (f8987a == null) {
            synchronized (AppMeasurement.class) {
                if (f8987a == null) {
                    frp frpVar = (frp) FirebaseAnalytics.class.getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
                    if (frpVar != null) {
                        f8987a = new AppMeasurement(frpVar);
                    } else {
                        f8987a = new AppMeasurement(cyg.al(context, new apu(0L, 0L, true, null, null, null, null, null), null));
                    }
                }
            }
        }
        return f8987a;
    }

    @Keep
    public void beginAdUnitExposure(String str) {
        this.f8988b.zzp(str);
    }

    @Keep
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.f8988b.c(str, str2, bundle);
    }

    @Keep
    public void endAdUnitExposure(String str) {
        this.f8988b.zzr(str);
    }

    @Keep
    public long generateEventId() {
        return this.f8988b.zzb();
    }

    @Keep
    public String getAppInstanceId() {
        return this.f8988b.zzh();
    }

    @Keep
    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        List<Bundle> d2 = this.f8988b.d(str, str2);
        ArrayList arrayList = new ArrayList(d2 == null ? 0 : d2.size());
        for (Bundle bundle : d2) {
            ConditionalUserProperty conditionalUserProperty = new ConditionalUserProperty();
            ckd.k(bundle);
            conditionalUserProperty.mAppId = (String) dyd.ah(bundle, PluginConstants.KEY_APP_ID, String.class, null);
            conditionalUserProperty.mOrigin = (String) dyd.ah(bundle, LiveConfigKey.ORIGIN, String.class, null);
            conditionalUserProperty.mName = (String) dyd.ah(bundle, abn.EXTRA_UA_APP_NAME, String.class, null);
            conditionalUserProperty.mValue = dyd.ah(bundle, "value", Object.class, null);
            conditionalUserProperty.mTriggerEventName = (String) dyd.ah(bundle, "trigger_event_name", String.class, null);
            conditionalUserProperty.mTriggerTimeout = ((Long) dyd.ah(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            conditionalUserProperty.mTimedOutEventName = (String) dyd.ah(bundle, "timed_out_event_name", String.class, null);
            conditionalUserProperty.mTimedOutEventParams = (Bundle) dyd.ah(bundle, "timed_out_event_params", Bundle.class, null);
            conditionalUserProperty.mTriggeredEventName = (String) dyd.ah(bundle, "triggered_event_name", String.class, null);
            conditionalUserProperty.mTriggeredEventParams = (Bundle) dyd.ah(bundle, "triggered_event_params", Bundle.class, null);
            conditionalUserProperty.mTimeToLive = ((Long) dyd.ah(bundle, "time_to_live", Long.class, 0L)).longValue();
            conditionalUserProperty.mExpiredEventName = (String) dyd.ah(bundle, "expired_event_name", String.class, null);
            conditionalUserProperty.mExpiredEventParams = (Bundle) dyd.ah(bundle, "expired_event_params", Bundle.class, null);
            conditionalUserProperty.mActive = ((Boolean) dyd.ah(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            conditionalUserProperty.mCreationTimestamp = ((Long) dyd.ah(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            conditionalUserProperty.mTriggeredTimestamp = ((Long) dyd.ah(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
            arrayList.add(conditionalUserProperty);
        }
        return arrayList;
    }

    @Keep
    public String getCurrentScreenClass() {
        return this.f8988b.zzi();
    }

    @Keep
    public String getCurrentScreenName() {
        return this.f8988b.zzj();
    }

    @Keep
    public String getGmpAppId() {
        return this.f8988b.zzk();
    }

    @Keep
    public int getMaxUserProperties(String str) {
        return this.f8988b.zza(str);
    }

    @VisibleForTesting
    @Keep
    public Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return this.f8988b.e(str, str2, z);
    }

    @Keep
    public void logEventInternal(String str, String str2, Bundle bundle) {
        this.f8988b.b(str, str2, bundle);
    }

    @Keep
    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        ckd.k(conditionalUserProperty);
        Bundle bundle = new Bundle();
        String str = conditionalUserProperty.mAppId;
        if (str != null) {
            bundle.putString(PluginConstants.KEY_APP_ID, str);
        }
        String str2 = conditionalUserProperty.mOrigin;
        if (str2 != null) {
            bundle.putString(LiveConfigKey.ORIGIN, str2);
        }
        String str3 = conditionalUserProperty.mName;
        if (str3 != null) {
            bundle.putString(abn.EXTRA_UA_APP_NAME, str3);
        }
        Object obj = conditionalUserProperty.mValue;
        if (obj != null) {
            dyd.bf(obj, bundle);
        }
        String str4 = conditionalUserProperty.mTriggerEventName;
        if (str4 != null) {
            bundle.putString("trigger_event_name", str4);
        }
        bundle.putLong("trigger_timeout", conditionalUserProperty.mTriggerTimeout);
        String str5 = conditionalUserProperty.mTimedOutEventName;
        if (str5 != null) {
            bundle.putString("timed_out_event_name", str5);
        }
        Bundle bundle2 = conditionalUserProperty.mTimedOutEventParams;
        if (bundle2 != null) {
            bundle.putBundle("timed_out_event_params", bundle2);
        }
        String str6 = conditionalUserProperty.mTriggeredEventName;
        if (str6 != null) {
            bundle.putString("triggered_event_name", str6);
        }
        Bundle bundle3 = conditionalUserProperty.mTriggeredEventParams;
        if (bundle3 != null) {
            bundle.putBundle("triggered_event_params", bundle3);
        }
        bundle.putLong("time_to_live", conditionalUserProperty.mTimeToLive);
        String str7 = conditionalUserProperty.mExpiredEventName;
        if (str7 != null) {
            bundle.putString("expired_event_name", str7);
        }
        Bundle bundle4 = conditionalUserProperty.mExpiredEventParams;
        if (bundle4 != null) {
            bundle.putBundle("expired_event_params", bundle4);
        }
        bundle.putLong("creation_timestamp", conditionalUserProperty.mCreationTimestamp);
        bundle.putBoolean("active", conditionalUserProperty.mActive);
        bundle.putLong("triggered_timestamp", conditionalUserProperty.mTriggeredTimestamp);
        this.f8988b.f(bundle);
    }
}
