package g;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.HashMap;

/* loaded from: classes3.dex */
public abstract class ddj extends dzk implements ees {
    public static ees asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        return queryLocalInterface instanceof ees ? (ees) queryLocalInterface : new gim(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService", 3);
    }

    @Override // g.dzk
    public final boolean t(int i, Parcel parcel, Parcel parcel2) {
        boolean z;
        brv brvVar = null;
        brv brvVar2 = null;
        brv brvVar3 = null;
        aad aadVar = null;
        aad aadVar2 = null;
        aad aadVar3 = null;
        brv brvVar4 = null;
        brv brvVar5 = null;
        brv brvVar6 = null;
        brv brvVar7 = null;
        brv brvVar8 = null;
        brv brvVar9 = null;
        grg grgVar = null;
        brv brvVar10 = null;
        brv brvVar11 = null;
        brv brvVar12 = null;
        brv brvVar13 = null;
        brv brvVar14 = null;
        switch (i) {
            case 1:
                bjq d2 = bpp.d(parcel.readStrongBinder());
                apu apuVar = (apu) m.c(parcel, apu.CREATOR);
                long readLong = parcel.readLong();
                m.d(parcel);
                initialize(d2, apuVar, readLong);
                break;
            case 2:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                Bundle bundle = (Bundle) m.c(parcel, Bundle.CREATOR);
                boolean z2 = parcel.readInt() != 0;
                boolean z3 = parcel.readInt() != 0;
                long readLong2 = parcel.readLong();
                m.d(parcel);
                logEvent(readString, readString2, bundle, z2, z3, readLong2);
                break;
            case 3:
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                Bundle bundle2 = (Bundle) m.c(parcel, Bundle.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    brvVar = queryLocalInterface instanceof brv ? (brv) queryLocalInterface : new cjw(readStrongBinder);
                }
                brv brvVar15 = brvVar;
                long readLong3 = parcel.readLong();
                m.d(parcel);
                logEventAndBundle(readString3, readString4, bundle2, brvVar15, readLong3);
                break;
            case 4:
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                bjq d3 = bpp.d(parcel.readStrongBinder());
                ClassLoader classLoader = m.f19626a;
                z = parcel.readInt() != 0;
                long readLong4 = parcel.readLong();
                m.d(parcel);
                setUserProperty(readString5, readString6, d3, z, readLong4);
                break;
            case 5:
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                ClassLoader classLoader2 = m.f19626a;
                z = parcel.readInt() != 0;
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    brvVar14 = queryLocalInterface2 instanceof brv ? (brv) queryLocalInterface2 : new cjw(readStrongBinder2);
                }
                m.d(parcel);
                getUserProperties(readString7, readString8, z, brvVar14);
                break;
            case 6:
                String readString9 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    brvVar13 = queryLocalInterface3 instanceof brv ? (brv) queryLocalInterface3 : new cjw(readStrongBinder3);
                }
                m.d(parcel);
                getMaxUserProperties(readString9, brvVar13);
                break;
            case 7:
                String readString10 = parcel.readString();
                long readLong5 = parcel.readLong();
                m.d(parcel);
                setUserId(readString10, readLong5);
                break;
            case 8:
                Bundle bundle3 = (Bundle) m.c(parcel, Bundle.CREATOR);
                long readLong6 = parcel.readLong();
                m.d(parcel);
                setConditionalUserProperty(bundle3, readLong6);
                break;
            case 9:
                String readString11 = parcel.readString();
                String readString12 = parcel.readString();
                Bundle bundle4 = (Bundle) m.c(parcel, Bundle.CREATOR);
                m.d(parcel);
                clearConditionalUserProperty(readString11, readString12, bundle4);
                break;
            case 10:
                String readString13 = parcel.readString();
                String readString14 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    brvVar12 = queryLocalInterface4 instanceof brv ? (brv) queryLocalInterface4 : new cjw(readStrongBinder4);
                }
                m.d(parcel);
                getConditionalUserProperties(readString13, readString14, brvVar12);
                break;
            case 11:
                ClassLoader classLoader3 = m.f19626a;
                z = parcel.readInt() != 0;
                long readLong7 = parcel.readLong();
                m.d(parcel);
                setMeasurementEnabled(z, readLong7);
                break;
            case 12:
                long readLong8 = parcel.readLong();
                m.d(parcel);
                resetAnalyticsData(readLong8);
                break;
            case 13:
                long readLong9 = parcel.readLong();
                m.d(parcel);
                setMinimumSessionDuration(readLong9);
                break;
            case 14:
                long readLong10 = parcel.readLong();
                m.d(parcel);
                setSessionTimeoutDuration(readLong10);
                break;
            case 15:
                bjq d4 = bpp.d(parcel.readStrongBinder());
                String readString15 = parcel.readString();
                String readString16 = parcel.readString();
                long readLong11 = parcel.readLong();
                m.d(parcel);
                setCurrentScreen(d4, readString15, readString16, readLong11);
                break;
            case 16:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    brvVar11 = queryLocalInterface5 instanceof brv ? (brv) queryLocalInterface5 : new cjw(readStrongBinder5);
                }
                m.d(parcel);
                getCurrentScreenName(brvVar11);
                break;
            case 17:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    brvVar10 = queryLocalInterface6 instanceof brv ? (brv) queryLocalInterface6 : new cjw(readStrongBinder6);
                }
                m.d(parcel);
                getCurrentScreenClass(brvVar10);
                break;
            case 18:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    grgVar = queryLocalInterface7 instanceof grg ? (grg) queryLocalInterface7 : new ffz(readStrongBinder7, "com.google.android.gms.measurement.api.internal.IStringProvider", 3);
                }
                m.d(parcel);
                setInstanceIdProvider(grgVar);
                break;
            case 19:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    brvVar9 = queryLocalInterface8 instanceof brv ? (brv) queryLocalInterface8 : new cjw(readStrongBinder8);
                }
                m.d(parcel);
                getCachedAppInstanceId(brvVar9);
                break;
            case 20:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    brvVar8 = queryLocalInterface9 instanceof brv ? (brv) queryLocalInterface9 : new cjw(readStrongBinder9);
                }
                m.d(parcel);
                getAppInstanceId(brvVar8);
                break;
            case 21:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 != null) {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    brvVar7 = queryLocalInterface10 instanceof brv ? (brv) queryLocalInterface10 : new cjw(readStrongBinder10);
                }
                m.d(parcel);
                getGmpAppId(brvVar7);
                break;
            case 22:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 != null) {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    brvVar6 = queryLocalInterface11 instanceof brv ? (brv) queryLocalInterface11 : new cjw(readStrongBinder11);
                }
                m.d(parcel);
                generateEventId(brvVar6);
                break;
            case 23:
                String readString17 = parcel.readString();
                long readLong12 = parcel.readLong();
                m.d(parcel);
                beginAdUnitExposure(readString17, readLong12);
                break;
            case 24:
                String readString18 = parcel.readString();
                long readLong13 = parcel.readLong();
                m.d(parcel);
                endAdUnitExposure(readString18, readLong13);
                break;
            case 25:
                bjq d5 = bpp.d(parcel.readStrongBinder());
                long readLong14 = parcel.readLong();
                m.d(parcel);
                onActivityStarted(d5, readLong14);
                break;
            case 26:
                bjq d6 = bpp.d(parcel.readStrongBinder());
                long readLong15 = parcel.readLong();
                m.d(parcel);
                onActivityStopped(d6, readLong15);
                break;
            case 27:
                bjq d7 = bpp.d(parcel.readStrongBinder());
                Bundle bundle5 = (Bundle) m.c(parcel, Bundle.CREATOR);
                long readLong16 = parcel.readLong();
                m.d(parcel);
                onActivityCreated(d7, bundle5, readLong16);
                break;
            case 28:
                bjq d8 = bpp.d(parcel.readStrongBinder());
                long readLong17 = parcel.readLong();
                m.d(parcel);
                onActivityDestroyed(d8, readLong17);
                break;
            case 29:
                bjq d9 = bpp.d(parcel.readStrongBinder());
                long readLong18 = parcel.readLong();
                m.d(parcel);
                onActivityPaused(d9, readLong18);
                break;
            case 30:
                bjq d10 = bpp.d(parcel.readStrongBinder());
                long readLong19 = parcel.readLong();
                m.d(parcel);
                onActivityResumed(d10, readLong19);
                break;
            case 31:
                bjq d11 = bpp.d(parcel.readStrongBinder());
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 != null) {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    brvVar5 = queryLocalInterface12 instanceof brv ? (brv) queryLocalInterface12 : new cjw(readStrongBinder12);
                }
                long readLong20 = parcel.readLong();
                m.d(parcel);
                onActivitySaveInstanceState(d11, brvVar5, readLong20);
                break;
            case 32:
                Bundle bundle6 = (Bundle) m.c(parcel, Bundle.CREATOR);
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 != null) {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    brvVar4 = queryLocalInterface13 instanceof brv ? (brv) queryLocalInterface13 : new cjw(readStrongBinder13);
                }
                long readLong21 = parcel.readLong();
                m.d(parcel);
                performAction(bundle6, brvVar4, readLong21);
                break;
            case 33:
                int readInt = parcel.readInt();
                String readString19 = parcel.readString();
                bjq d12 = bpp.d(parcel.readStrongBinder());
                bjq d13 = bpp.d(parcel.readStrongBinder());
                bjq d14 = bpp.d(parcel.readStrongBinder());
                m.d(parcel);
                logHealthData(readInt, readString19, d12, d13, d14);
                break;
            case 34:
                IBinder readStrongBinder14 = parcel.readStrongBinder();
                if (readStrongBinder14 != null) {
                    IInterface queryLocalInterface14 = readStrongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    aadVar3 = queryLocalInterface14 instanceof aad ? (aad) queryLocalInterface14 : new etv(readStrongBinder14);
                }
                m.d(parcel);
                setEventInterceptor(aadVar3);
                break;
            case 35:
                IBinder readStrongBinder15 = parcel.readStrongBinder();
                if (readStrongBinder15 != null) {
                    IInterface queryLocalInterface15 = readStrongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    aadVar2 = queryLocalInterface15 instanceof aad ? (aad) queryLocalInterface15 : new etv(readStrongBinder15);
                }
                m.d(parcel);
                registerOnMeasurementEventListener(aadVar2);
                break;
            case 36:
                IBinder readStrongBinder16 = parcel.readStrongBinder();
                if (readStrongBinder16 != null) {
                    IInterface queryLocalInterface16 = readStrongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    aadVar = queryLocalInterface16 instanceof aad ? (aad) queryLocalInterface16 : new etv(readStrongBinder16);
                }
                m.d(parcel);
                unregisterOnMeasurementEventListener(aadVar);
                break;
            case 37:
                HashMap readHashMap = parcel.readHashMap(m.f19626a);
                m.d(parcel);
                initForTests(readHashMap);
                break;
            case 38:
                IBinder readStrongBinder17 = parcel.readStrongBinder();
                if (readStrongBinder17 != null) {
                    IInterface queryLocalInterface17 = readStrongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    brvVar3 = queryLocalInterface17 instanceof brv ? (brv) queryLocalInterface17 : new cjw(readStrongBinder17);
                }
                int readInt2 = parcel.readInt();
                m.d(parcel);
                getTestFlag(brvVar3, readInt2);
                break;
            case 39:
                ClassLoader classLoader4 = m.f19626a;
                z = parcel.readInt() != 0;
                m.d(parcel);
                setDataCollectionEnabled(z);
                break;
            case 40:
                IBinder readStrongBinder18 = parcel.readStrongBinder();
                if (readStrongBinder18 != null) {
                    IInterface queryLocalInterface18 = readStrongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    brvVar2 = queryLocalInterface18 instanceof brv ? (brv) queryLocalInterface18 : new cjw(readStrongBinder18);
                }
                m.d(parcel);
                isDataCollectionEnabled(brvVar2);
                break;
            case 41:
            default:
                return false;
            case 42:
                Bundle bundle7 = (Bundle) m.c(parcel, Bundle.CREATOR);
                m.d(parcel);
                setDefaultEventParameters(bundle7);
                break;
            case 43:
                long readLong22 = parcel.readLong();
                m.d(parcel);
                clearMeasurementEnabled(readLong22);
                break;
            case 44:
                Bundle bundle8 = (Bundle) m.c(parcel, Bundle.CREATOR);
                long readLong23 = parcel.readLong();
                m.d(parcel);
                setConsent(bundle8, readLong23);
                break;
            case 45:
                Bundle bundle9 = (Bundle) m.c(parcel, Bundle.CREATOR);
                long readLong24 = parcel.readLong();
                m.d(parcel);
                setConsentThirdParty(bundle9, readLong24);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
