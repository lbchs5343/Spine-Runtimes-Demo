package g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import com.android.billingclient.api.Purchase;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class gwx extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final Object f18912a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18913b = 1;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18914c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f18915d;

    public gwx(axs axsVar, boolean z) {
        this.f18912a = axsVar;
        this.f18915d = z;
    }

    public gwx(bsz bszVar) {
        this.f18912a = bszVar;
    }

    public void e(Bundle bundle, ejd ejdVar, int i, apl aplVar, long j, boolean z) {
        beg i2;
        try {
            if (bundle.getByteArray("FAILURE_LOGGING_PAYLOAD") == null) {
                ((ffr) ((axs) this.f18912a).f11037d).ag(cgl.c(hm.BILLING_RESULT_RECEIVED_FROM_PHONESKY, i, ejdVar, null, aplVar), j, z);
                return;
            }
            ffr ffrVar = (ffr) ((axs) this.f18912a).f11037d;
            byte[] byteArray = bundle.getByteArray("FAILURE_LOGGING_PAYLOAD");
            int i3 = beg.f11366a;
            synchronized (beg.class) {
                int i4 = beg.f11366a;
                fjo fjoVar = fjo.f16893a;
                i2 = aky.i();
                int i5 = beg.f11366a;
            }
            ffrVar.ag(hd.a(byteArray, i2), j, z);
        } catch (Throwable unused) {
            int i6 = gbs.f17875a;
        }
    }

    public synchronized void f(Context context, IntentFilter intentFilter) {
        try {
            if (this.f18914c) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(this, intentFilter, true != this.f18915d ? 4 : 2);
            } else {
                context.registerReceiver(this, intentFilter);
            }
            this.f18914c = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void g() {
        bsz bszVar = (bsz) this.f18912a;
        bszVar.bi();
        bszVar.zzaz()._e();
        bszVar.zzaz()._e();
        if (this.f18914c) {
            bszVar.zzay().f11519c.h("Unregistering connectivity change receiver");
            this.f18914c = false;
            this.f18915d = false;
            try {
                bszVar.m.v.unregisterReceiver(this);
            } catch (IllegalArgumentException e2) {
                bszVar.zzay().f11518b.i(e2, "Failed to unregister the network broadcast receiver");
            }
        }
    }

    public synchronized void h(Context context) {
        if (!this.f18914c) {
            int i = gbs.f17875a;
        } else {
            context.unregisterReceiver(this);
            this.f18914c = false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0254  */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onReceive(Context context, Intent intent) {
        char c2;
        ejd d2;
        long j;
        djs djsVar;
        int intValue;
        int i = this.f18913b;
        Object obj = this.f18912a;
        switch (i) {
            case 0:
                bsz bszVar = (bsz) obj;
                bszVar.bi();
                String action = intent.getAction();
                bszVar.zzay().f11519c.i(action, "NetworkBroadcastReceiver received action");
                if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                    fit fitVar = bszVar.z;
                    bsz.ag(fitVar);
                    boolean aw = fitVar.aw();
                    if (this.f18915d != aw) {
                        this.f18915d = aw;
                        bszVar.zzaz().p(new aku(this, aw));
                        break;
                    }
                } else {
                    bszVar.zzay().f11520g.i(action, "NetworkBroadcastReceiver received unknown action");
                    break;
                }
                break;
            default:
                axs axsVar = (axs) obj;
                String action2 = intent.getAction();
                int hashCode = action2.hashCode();
                if (hashCode == -1484087650) {
                    if (action2.equals("com.android.vending.billing.PURCHASES_UPDATED")) {
                        c2 = 0;
                    }
                    c2 = 65535;
                } else if (hashCode != -337612916) {
                    if (hashCode == 345207161 && action2.equals("com.android.vending.billing.ALTERNATIVE_BILLING")) {
                        c2 = 2;
                    }
                    c2 = 65535;
                } else {
                    if (action2.equals("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED")) {
                        c2 = 1;
                    }
                    c2 = 65535;
                }
                apl aplVar = c2 != 0 ? c2 != 1 ? c2 != 2 ? apl.BROADCAST_ACTION_UNSPECIFIED : apl.ALTERNATIVE_BILLING_ACTION : apl.LOCAL_PURCHASES_UPDATED_ACTION : apl.PURCHASES_UPDATED_ACTION;
                apl aplVar2 = apl.LOCAL_PURCHASES_UPDATED_ACTION;
                int i2 = (aplVar.equals(aplVar2) || aplVar.equals(apl.ALTERNATIVE_BILLING_ACTION)) ? 2 : aplVar.equals(apl.PURCHASES_UPDATED_ACTION) ? 32 : 1;
                Bundle extras = intent.getExtras();
                ArrayList arrayList = null;
                if (extras == null) {
                    int i3 = gbs.f17875a;
                    ffr ffrVar = (ffr) axsVar.f11037d;
                    hm hmVar = hm.NULL_BUNDLE_IN_BROADCAST_RECEIVER;
                    ejd ejdVar = edc.f15337a;
                    try {
                        ffrVar.z(cgl.c(hmVar, i2, ejdVar, null, aplVar), (djs) ffrVar.f16721f);
                    } catch (Throwable unused) {
                        int i4 = gbs.f17875a;
                    }
                    eoy eoyVar = (eoy) axsVar.f11036a;
                    if (eoyVar != null) {
                        efc efcVar = (efc) eoyVar;
                        efcVar.f(ejdVar, null, efcVar.f15424e, efcVar.f15421b);
                        break;
                    }
                } else {
                    if (i2 == 2) {
                        int i5 = gbs.f17875a;
                        gvg d3 = ejd.d();
                        d3.f18813e = gbs.e(intent.getExtras(), "BillingBroadcastManager");
                        Bundle extras2 = intent.getExtras();
                        if (extras2 != null) {
                            Object obj2 = extras2.get("SUB_RESPONSE_CODE");
                            if (obj2 == null) {
                                gbs.i("BillingBroadcastManager", "getLaunchBillingFlowSubResponseCodeFromBundle() got null response code, assuming OK");
                            } else if (obj2 instanceof Integer) {
                                intValue = ((Integer) obj2).intValue();
                                d3.f18810b = intValue;
                                d3.f18811c = gbs.f(intent.getExtras(), "BillingBroadcastManager");
                                d2 = d3.h();
                            } else {
                                "Unexpected type for bundle sub response code: ".concat(obj2.getClass().getName());
                            }
                        }
                        intValue = 0;
                        d3.f18810b = intValue;
                        d3.f18811c = gbs.f(intent.getExtras(), "BillingBroadcastManager");
                        d2 = d3.h();
                    } else {
                        d2 = gbs.d(intent, "BillingBroadcastManager");
                    }
                    long j2 = extras.getLong("billingClientTransactionId", 0L);
                    boolean z = extras.getBoolean("wasServiceAutoReconnected", false);
                    if (aplVar.equals(apl.PURCHASES_UPDATED_ACTION) || aplVar.equals(aplVar2)) {
                        apl aplVar3 = aplVar;
                        ejd ejdVar2 = d2;
                        ArrayList<String> stringArrayList = extras.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                        ArrayList<String> stringArrayList2 = extras.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                        ArrayList arrayList2 = new ArrayList();
                        if (stringArrayList == null || stringArrayList2 == null) {
                            j = 0;
                            Purchase b2 = gbs.b(extras.getString("INAPP_PURCHASE_DATA"), extras.getString("INAPP_DATA_SIGNATURE"));
                            if (b2 == null) {
                                gbs.i("BillingHelper", "Couldn't find single purchase data as well.");
                                if (ejdVar2.f15636a != 0) {
                                    ffr ffrVar2 = (ffr) axsVar.f11037d;
                                    eag d4 = cgl.d(i2, aplVar3);
                                    try {
                                        gza gzaVar = (gza) d4.x();
                                        dmu dmuVar = (dmu) d4.f().x();
                                        dmuVar.f();
                                        gsc.b((gsc) dmuVar.f14803d, z);
                                        gzaVar.f();
                                        eag.c((eag) gzaVar.f14803d, (gsc) dmuVar.g());
                                        eag eagVar = (eag) gzaVar.g();
                                        if (j2 == j) {
                                            djsVar = (djs) ffrVar2.f16721f;
                                        } else {
                                            gzp gzpVar = (gzp) ((djs) ffrVar2.f16721f).x();
                                            gzpVar.f();
                                            djs.n((djs) gzpVar.f14803d, j2);
                                            djsVar = (djs) gzpVar.g();
                                        }
                                        ffrVar2.ai(eagVar, djsVar);
                                    } catch (Throwable unused2) {
                                        int i6 = gbs.f17875a;
                                    }
                                } else {
                                    e(extras, ejdVar2, i2, aplVar3, j2, z);
                                }
                                efc efcVar2 = (efc) ((eoy) axsVar.f11036a);
                                efcVar2.f(ejdVar2, arrayList, efcVar2.f15424e, efcVar2.f15421b);
                                break;
                            } else {
                                arrayList2.add(b2);
                            }
                        } else {
                            j = 0;
                            gbs.i("BillingHelper", "Found purchase list of " + stringArrayList.size() + " items");
                            for (int i7 = 0; i7 < stringArrayList.size() && i7 < stringArrayList2.size(); i7++) {
                                Purchase b3 = gbs.b(stringArrayList.get(i7), stringArrayList2.get(i7));
                                if (b3 != null) {
                                    arrayList2.add(b3);
                                }
                            }
                        }
                        arrayList = arrayList2;
                        if (ejdVar2.f15636a != 0) {
                        }
                        efc efcVar22 = (efc) ((eoy) axsVar.f11036a);
                        efcVar22.f(ejdVar2, arrayList, efcVar22.f15424e, efcVar22.f15421b);
                    } else if (aplVar.equals(apl.ALTERNATIVE_BILLING_ACTION)) {
                        if (d2.f15636a != 0) {
                            ejd ejdVar3 = d2;
                            e(extras, ejdVar3, i2, aplVar, j2, z);
                            eoy eoyVar2 = (eoy) axsVar.f11036a;
                            duz duzVar = fkz.f16953g;
                            efc efcVar3 = (efc) eoyVar2;
                            efcVar3.f(ejdVar3, fun.f17435a, efcVar3.f15424e, efcVar3.f15421b);
                        } else {
                            axsVar.getClass();
                            ffr ffrVar3 = (ffr) axsVar.f11037d;
                            hm hmVar2 = hm.MISSING_USER_CHOICE_BILLING_LISTENER;
                            ejd ejdVar4 = edc.f15337a;
                            ffrVar3.ag(cgl.c(hmVar2, i2, ejdVar4, null, aplVar), j2, z);
                            eoy eoyVar3 = (eoy) axsVar.f11036a;
                            duz duzVar2 = fkz.f16953g;
                            efc efcVar4 = (efc) eoyVar3;
                            efcVar4.f(ejdVar4, fun.f17435a, efcVar4.f15424e, efcVar4.f15421b);
                        }
                    }
                }
                break;
        }
    }
}
