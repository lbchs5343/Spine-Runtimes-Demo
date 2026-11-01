package g;

import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.trinea.android.developertools.R;
import g.fxe;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class ctx extends dms {
    private fzk alliancesImpl;

    @Override // g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_alliances);
        fzk fzkVar = new fzk();
        fzkVar.h = this;
        fzkVar.l = this;
        this.alliancesImpl = fzkVar;
        fzkVar.f17709b = true;
        fzkVar.f17710c = he.UNDEFINED_ITEM_ID;
        fzkVar.f17711d = aky.m(this);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.promotion_list);
        fzkVar.f17712e = recyclerView;
        recyclerView.setNestedScrollingEnabled(false);
        int min = Math.min(acw.bo(fzkVar.f17711d), getResources().getInteger(R.integer.image_text_item_span_count));
        if (min <= 0) {
            min = getResources().getInteger(R.integer.image_text_item_span_count);
        }
        fzkVar.f17712e.setLayoutManager(new GridLayoutManager(min));
        fzkVar.f17714g = findViewById(R.id.brother_layout);
        RecyclerView recyclerView2 = (RecyclerView) findViewById(R.id.brother_list);
        fzkVar.k = recyclerView2;
        recyclerView2.setNestedScrollingEnabled(false);
        fzkVar.k.setLayoutManager(new LinearLayoutManager(1));
        fzkVar.i = findViewById(R.id.brother_header);
        fzkVar.o = (TextView) findViewById(R.id.brother_text);
        fzkVar.f17708a = (ProgressBar) findViewById(R.id.brother_progress_bar);
        TextView textView = (TextView) findViewById(R.id.brother_more);
        fzkVar.m = textView;
        if (textView != null) {
            textView.setOnClickListener(new ld(1, fzkVar));
        }
        fzk fzkVar2 = this.alliancesImpl;
        ctx ctxVar = fzkVar2.l;
        fzn fznVar = new fzn(2, false);
        fznVar.h = ctxVar;
        fznVar.f17729d = ctxVar.getPackageManager();
        fznVar.f17730e = fzkVar2;
        fznVar.f17731f = null;
        fzkVar2.n = fznVar;
        fxe.e m = atf.g(ctxVar).m();
        if (m == null || !m.isShowBrothers) {
            fzkVar2.f17714g.setVisibility(8);
        } else {
            fzkVar2.f17714g.setVisibility(0);
            fzn fznVar2 = fzkVar2.n;
            ctx ctxVar2 = (ctx) fznVar2.h;
            ((azp) dtw.c(ctxVar2).r(azp.class)).a(ctxVar2.getPackageName(), eyt.bj(ctxVar2), cux.ab(ctxVar2)).d(new evf(2, fznVar2));
        }
        if (acw.u(fzkVar2.f17711d)) {
            fzkVar2.f17712e.setVisibility(8);
            return;
        }
        fzkVar2.f17712e.setVisibility(0);
        dbv dbvVar = new dbv(ctxVar, fzkVar2.f17711d);
        fzkVar2.j = dbvVar;
        ctx ctxVar3 = fzkVar2.h;
        ffi ffiVar = new ffi(2);
        ffiVar.f16702d = ctxVar3;
        dbvVar.g(dgk.class, ffiVar);
        fzkVar2.f17712e.setAdapter(fzkVar2.j);
    }

    @Override // g.ub, androidx.fragment.app.u, android.app.Activity
    public void onStart() {
        super.onStart();
        fzk fzkVar = this.alliancesImpl;
        fzn fznVar = fzkVar.n;
        ctx ctxVar = (ctx) fznVar.h;
        boolean o = atf.g(ctxVar).o();
        int i = 3;
        if ((ctxVar.getResources().getInteger(R.integer.cchannel) != 2 && ctxVar.getResources().getInteger(R.integer.cchannel) != 3) || !byh.aw(ctxVar, o)) {
            sr srVar = new sr(new fc(i, fznVar), i, false);
            fznVar.i = srVar;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
            intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
            intentFilter.addDataScheme("package");
            AtomicInteger atomicInteger = fgj.f16743a;
            if (Build.VERSION.SDK_INT >= 34) {
                ctxVar.registerReceiver(srVar, intentFilter, 2);
            } else {
                ctxVar.registerReceiver(srVar, intentFilter);
            }
        }
        RecyclerView recyclerView = fzkVar.f17712e;
        if (recyclerView == null || recyclerView.getVisibility() != 0 || fzkVar.j == null) {
            return;
        }
        fzkVar.j.h(aky.m(fzkVar.l));
        fzkVar.j.notifyDataSetChanged();
    }

    @Override // g.ub, androidx.fragment.app.u, android.app.Activity
    public void onStop() {
        fzn fznVar = this.alliancesImpl.n;
        sr srVar = (sr) fznVar.i;
        if (srVar != null) {
            try {
                try {
                    ctx ctxVar = (ctx) fznVar.h;
                    int i = sr.f20004a;
                    ctxVar.unregisterReceiver(srVar);
                } catch (Exception e2) {
                    HashMap hashMap = fnp.f17095b;
                    if (!"huawei".equalsIgnoreCase(Build.MANUFACTURER)) {
                        throw e2;
                    }
                }
            } finally {
                fznVar.i = null;
            }
        }
        super.onStop();
    }
}
