package g;

import android.os.Bundle;
import android.os.Parcel;

/* loaded from: classes3.dex */
public final class gim extends ob implements ees {
    @Override // g.ees
    public final void beginAdUnitExposure(String str, long j) {
        Parcel _cd = _cd();
        _cd.writeString(str);
        _cd.writeLong(j);
        i(_cd, 23);
    }

    @Override // g.ees
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel _cd = _cd();
        _cd.writeString(str);
        _cd.writeString(str2);
        m.e(_cd, bundle);
        i(_cd, 9);
    }

    @Override // g.ees
    public final void endAdUnitExposure(String str, long j) {
        Parcel _cd = _cd();
        _cd.writeString(str);
        _cd.writeLong(j);
        i(_cd, 24);
    }

    @Override // g.ees
    public final void generateEventId(brv brvVar) {
        Parcel _cd = _cd();
        m.b(_cd, brvVar);
        i(_cd, 22);
    }

    @Override // g.ees
    public final void getCachedAppInstanceId(brv brvVar) {
        Parcel _cd = _cd();
        m.b(_cd, brvVar);
        i(_cd, 19);
    }

    @Override // g.ees
    public final void getConditionalUserProperties(String str, String str2, brv brvVar) {
        Parcel _cd = _cd();
        _cd.writeString(str);
        _cd.writeString(str2);
        m.b(_cd, brvVar);
        i(_cd, 10);
    }

    @Override // g.ees
    public final void getCurrentScreenClass(brv brvVar) {
        Parcel _cd = _cd();
        m.b(_cd, brvVar);
        i(_cd, 17);
    }

    @Override // g.ees
    public final void getCurrentScreenName(brv brvVar) {
        Parcel _cd = _cd();
        m.b(_cd, brvVar);
        i(_cd, 16);
    }

    @Override // g.ees
    public final void getGmpAppId(brv brvVar) {
        Parcel _cd = _cd();
        m.b(_cd, brvVar);
        i(_cd, 21);
    }

    @Override // g.ees
    public final void getMaxUserProperties(String str, brv brvVar) {
        Parcel _cd = _cd();
        _cd.writeString(str);
        m.b(_cd, brvVar);
        i(_cd, 6);
    }

    @Override // g.ees
    public final void getUserProperties(String str, String str2, boolean z, brv brvVar) {
        Parcel _cd = _cd();
        _cd.writeString(str);
        _cd.writeString(str2);
        ClassLoader classLoader = m.f19626a;
        _cd.writeInt(z ? 1 : 0);
        m.b(_cd, brvVar);
        i(_cd, 5);
    }

    @Override // g.ees
    public final void initialize(bjq bjqVar, apu apuVar, long j) {
        Parcel _cd = _cd();
        m.b(_cd, bjqVar);
        m.e(_cd, apuVar);
        _cd.writeLong(j);
        i(_cd, 1);
    }

    @Override // g.ees
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        Parcel _cd = _cd();
        _cd.writeString(str);
        _cd.writeString(str2);
        m.e(_cd, bundle);
        _cd.writeInt(z ? 1 : 0);
        _cd.writeInt(1);
        _cd.writeLong(j);
        i(_cd, 2);
    }

    @Override // g.ees
    public final void logHealthData(int i, String str, bjq bjqVar, bjq bjqVar2, bjq bjqVar3) {
        Parcel _cd = _cd();
        _cd.writeInt(5);
        _cd.writeString("Error with data collection. Data lost.");
        m.b(_cd, bjqVar);
        m.b(_cd, bjqVar2);
        m.b(_cd, bjqVar3);
        i(_cd, 33);
    }

    @Override // g.ees
    public final void onActivityCreated(bjq bjqVar, Bundle bundle, long j) {
        Parcel _cd = _cd();
        m.b(_cd, bjqVar);
        m.e(_cd, bundle);
        _cd.writeLong(j);
        i(_cd, 27);
    }

    @Override // g.ees
    public final void onActivityDestroyed(bjq bjqVar, long j) {
        Parcel _cd = _cd();
        m.b(_cd, bjqVar);
        _cd.writeLong(j);
        i(_cd, 28);
    }

    @Override // g.ees
    public final void onActivityPaused(bjq bjqVar, long j) {
        Parcel _cd = _cd();
        m.b(_cd, bjqVar);
        _cd.writeLong(j);
        i(_cd, 29);
    }

    @Override // g.ees
    public final void onActivityResumed(bjq bjqVar, long j) {
        Parcel _cd = _cd();
        m.b(_cd, bjqVar);
        _cd.writeLong(j);
        i(_cd, 30);
    }

    @Override // g.ees
    public final void onActivitySaveInstanceState(bjq bjqVar, brv brvVar, long j) {
        Parcel _cd = _cd();
        m.b(_cd, bjqVar);
        m.b(_cd, brvVar);
        _cd.writeLong(j);
        i(_cd, 31);
    }

    @Override // g.ees
    public final void onActivityStarted(bjq bjqVar, long j) {
        Parcel _cd = _cd();
        m.b(_cd, bjqVar);
        _cd.writeLong(j);
        i(_cd, 25);
    }

    @Override // g.ees
    public final void onActivityStopped(bjq bjqVar, long j) {
        Parcel _cd = _cd();
        m.b(_cd, bjqVar);
        _cd.writeLong(j);
        i(_cd, 26);
    }

    @Override // g.ees
    public final void performAction(Bundle bundle, brv brvVar, long j) {
        Parcel _cd = _cd();
        m.e(_cd, bundle);
        m.b(_cd, brvVar);
        _cd.writeLong(j);
        i(_cd, 32);
    }

    @Override // g.ees
    public final void setConditionalUserProperty(Bundle bundle, long j) {
        Parcel _cd = _cd();
        m.e(_cd, bundle);
        _cd.writeLong(j);
        i(_cd, 8);
    }

    @Override // g.ees
    public final void setConsent(Bundle bundle, long j) {
        Parcel _cd = _cd();
        m.e(_cd, bundle);
        _cd.writeLong(j);
        i(_cd, 44);
    }

    @Override // g.ees
    public final void setCurrentScreen(bjq bjqVar, String str, String str2, long j) {
        Parcel _cd = _cd();
        m.b(_cd, bjqVar);
        _cd.writeString(str);
        _cd.writeString(str2);
        _cd.writeLong(j);
        i(_cd, 15);
    }

    @Override // g.ees
    public final void setDataCollectionEnabled(boolean z) {
        throw null;
    }

    @Override // g.ees
    public final void setUserProperty(String str, String str2, bjq bjqVar, boolean z, long j) {
        Parcel _cd = _cd();
        _cd.writeString(str);
        _cd.writeString(str2);
        m.b(_cd, bjqVar);
        _cd.writeInt(1);
        _cd.writeLong(j);
        i(_cd, 4);
    }
}
