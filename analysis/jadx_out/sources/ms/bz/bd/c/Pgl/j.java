package ms.bz.bd.c.Pgl;

import android.text.TextUtils;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class j extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface nextElement = networkInterfaces.nextElement();
                Enumeration<InetAddress> inetAddresses = nextElement.getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement2 = inetAddresses.nextElement();
                    String name = nextElement.getName();
                    if (!TextUtils.isEmpty(name) && !nextElement2.isLoopbackAddress() && (nextElement2 instanceof Inet4Address) && name.startsWith((String) pblk.a(16777217, 0, 0L, "56d29a", new byte[]{54, 57, 25, 67, 18}))) {
                        pblk.a(16777217, 0, 0L, "d0b61c", new byte[]{124, 60, 20, 86, 47, 112, 99, 3, 54, 117, 102, 114, 31, 67, 3, 113, 61});
                        nextElement.getName();
                        return nextElement.getName();
                    }
                }
            }
            return "";
        } catch (SocketException unused) {
            pblk.a(16777217, 0, 0L, "241a20", new byte[]{36, 51, 86, 85, 36, 55, 16, 17, 100, 35, 38, 37, 81, 85, 11, 38, 56, 25, 58});
            return "";
        }
    }
}
