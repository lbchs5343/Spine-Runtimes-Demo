package g;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class bof {

    /* renamed from: a, reason: collision with root package name */
    public final gcq f11905a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f11906b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final dyg f11907c;

    public bof(gcq gcqVar) {
        this.f11905a = gcqVar;
        if (gcqVar != null) {
            try {
                List<uf> zzj = gcqVar.zzj();
                if (zzj != null) {
                    for (uf ufVar : zzj) {
                        dyg dygVar = ufVar != null ? new dyg(ufVar) : null;
                        if (dygVar != null) {
                            this.f11906b.add(dygVar);
                        }
                    }
                }
            } catch (RemoteException e2) {
                agd.f("Could not forward getAdapterResponseInfo to ResponseInfo.", e2);
            }
        }
        gcq gcqVar2 = this.f11905a;
        if (gcqVar2 == null) {
            return;
        }
        try {
            uf zzf = gcqVar2.zzf();
            if (zzf != null) {
                this.f11907c = new dyg(zzf);
            }
        } catch (RemoteException e3) {
            agd.f("Could not forward getLoadedAdapterResponse to ResponseInfo.", e3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004c A[LOOP:0: B:12:0x0046->B:14:0x004c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0025 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final JSONObject d() {
        String zzi;
        Iterator it;
        dyg dygVar;
        Bundle zze;
        JSONObject jSONObject = new JSONObject();
        String str = null;
        gcq gcqVar = this.f11905a;
        if (gcqVar != null) {
            try {
                zzi = gcqVar.zzi();
            } catch (RemoteException e2) {
                agd.f("Could not forward getResponseId to ResponseInfo.", e2);
            }
            if (zzi != null) {
                jSONObject.put("Response ID", "null");
            } else {
                jSONObject.put("Response ID", zzi);
            }
            if (gcqVar != null) {
                try {
                    str = gcqVar.zzg();
                } catch (RemoteException e3) {
                    agd.f("Could not forward getMediationAdapterClassName to ResponseInfo.", e3);
                }
            }
            if (str != null) {
                jSONObject.put("Mediation Adapter Class Name", "null");
            } else {
                jSONObject.put("Mediation Adapter Class Name", str);
            }
            JSONArray jSONArray = new JSONArray();
            it = this.f11906b.iterator();
            while (it.hasNext()) {
                jSONArray.put(((dyg) it.next()).c());
            }
            jSONObject.put("Adapter Responses", jSONArray);
            dygVar = this.f11907c;
            if (dygVar != null) {
                jSONObject.put("Loaded Adapter Response", dygVar.c());
            }
            if (gcqVar != null) {
                try {
                    zze = gcqVar.zze();
                } catch (RemoteException e4) {
                    agd.f("Could not forward getResponseExtras to ResponseInfo.", e4);
                }
                if (zze != null) {
                    jSONObject.put("Response Extras", cbv.f12612a.f12615d.w(zze));
                }
                return jSONObject;
            }
            zze = new Bundle();
            if (zze != null) {
            }
            return jSONObject;
        }
        zzi = null;
        if (zzi != null) {
        }
        if (gcqVar != null) {
        }
        if (str != null) {
        }
        JSONArray jSONArray2 = new JSONArray();
        it = this.f11906b.iterator();
        while (it.hasNext()) {
        }
        jSONObject.put("Adapter Responses", jSONArray2);
        dygVar = this.f11907c;
        if (dygVar != null) {
        }
        if (gcqVar != null) {
        }
        zze = new Bundle();
        if (zze != null) {
        }
        return jSONObject;
    }

    public final String toString() {
        try {
            return d().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }
}
