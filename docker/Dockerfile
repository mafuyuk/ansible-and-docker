FROM centos:7

# インストール済みのパッケージをアップデート＆キャッシュのクリア
RUN yum -y update && yum clean all

CMD ["/usr/sbin/init"]