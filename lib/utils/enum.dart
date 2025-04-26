enum AuthenticationState { authentified, unauthentified, loading, failure }

enum ConnectionStatus { cnnected, disconnected, connecting, disconecting }

enum BlocState { inital, loading, failed, success }

enum MobileMoneyImageState { inital, loaded }

extension AuthenticationStateX on AuthenticationState {
  bool get isLoading => this == AuthenticationState.loading;

  bool get isLogin => this == AuthenticationState.authentified;

  bool get isLogout => this == AuthenticationState.unauthentified;

  bool get isFailed => this == AuthenticationState.failure;
}

extension BlocStateX on BlocState {
  bool get isInitial => this == BlocState.inital;
  bool get isInProgress => this == BlocState.loading;
  bool get isSuccess => this == BlocState.success;
  bool get isFailed => this == BlocState.failed;
  bool get isInProgressOrSucess => isInProgress || isSuccess;
}
