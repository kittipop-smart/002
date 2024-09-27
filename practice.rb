class User:
    def __init__(self, name, email, password):
        self.name = name
        self.email = email
        self.password = password
        self.rooms = []  # List to keep track of rooms the user has entered

    def enter_room(self, room):
        if room not in self.rooms:
            self.rooms.append(room)
            room.add_user(self)
            print(f"{self.name} has entered the room: {room.name}")

    def send_message(self, room, content):
        if room in self.rooms:
            message = Message(user=self, room=room, content=content)
            room.broadcast(message)
        else:
            print(f"{self.name} cannot send a message to {room.name} because they are not in the room.")

    def acknowledge_message(self, room, message):
        print(f"{self.name} acknowledged the message in {room.name}: '{message.content}'")


class Room:
    def __init__(self, name, description):
        self.name = name
        self.description = description
        self.users = []  # List to keep track of users in the room

    def add_user(self, user):
        if user not in self.users:
            self.users.append(user)

    def broadcast(self, message):
        print(f"Broadcasting message in {self.name}: '{message.content}'")
        for user in self.users:
            user.acknowledge_message(self, message)


class Message:
    def __init__(self, user, room, content):
        self.user = user
        self.room = room
        self.content = content


# Example usage
if __name__ == "__main__":
    # Create users
    Smart= User("Smart", "kittipop.saiy@bumail.net", "1234")
    kinkaipop= User("kopkaipin", "smart10748@gmail.com", "5678")

    # Create a room
    chat_room = Room("Starbuck")

    # Users enter the room
    Smart.enter_room(chat_room)
    kinkaipop.enter_room(chat_room)

    # Users send messages
    Smart.send_message(chat_room)
    kinkaipop.send_message(chat_room)
