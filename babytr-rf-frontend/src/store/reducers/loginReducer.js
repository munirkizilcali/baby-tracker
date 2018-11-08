const loginReducer = (
	state = {
		isLoggedIn: false,
		userId: "",
		jwt: "",
		error: ""
	},
	action
) => {
	switch (action.type) {
		case "LOGIN":
			return { ...state };
		default:
			return state;
	}
};
